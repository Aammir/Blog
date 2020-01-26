<?php

namespace App\Http\Controllers;

use App\Contact;
use Illuminate\Http\Request;
use Illuminate\Validation\Validator;


class ContactController extends Controller {

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create() {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request) {

        $messages = [];
         $Validator = Validator::make(
         $request->all(),
         [
         'name' => 'required|min:3',
         'email' => 'required|email',
         'message' => 'required|min:12'
         ],
        $messages,
         );
         if ($Validator->fails()) {
             $response = $Validator->messages();
         } else {
             ['success' => 'Thank You, Your message has been sent']
         }
//$response = ['message'=>'submitted'];
        return response()->json($response, 200);

        /* request()->validate([
          'name' => 'required|min:3',
          'email' => 'required|email',
          'message' => 'required|min:12',
          ]);
          Contact::create([
          'name' => request('name'),
          'email' => request('email'),
          'message' => request('message')
          ]);
          return redirect()->to(url()->previous() . '#cForm')
          ->with('success', 'Thank You, Your message has been sent');
         */
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function show(Contact $contact) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function edit(Contact $contact) {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Contact $contact) {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function destroy(Contact $contact) {
        //
    }

}
