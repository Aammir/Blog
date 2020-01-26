<?php

namespace App\Http\Controllers;

use App\Newsletter;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator; //for ajax validation
class NewsletterController extends Controller {

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
        request()->validate(['subscriber_email' => 'required|email|unique:newsletters']);
        Newsletter::create([
            'subscriber_email' => request('subscriber_email')
        ]);
//        return back('#subscribe');
//        return redirect('#subscribe');
        return redirect()->to(url()->previous() . '#subscribe')
                        ->with('success', 'You have successfully subscribed');
//                ->with('error', 'The subscriber email has already been taken.')
//        return redirect('#subscribe')->with('success','You have successfully subscribed');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Newsletter  $newsletter
     * @return \Illuminate\Http\Response
     */
    public function show(Newsletter $newsletter) {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Newsletter  $newsletter
     * @return \Illuminate\Http\Response
     */
    public function edit(Newsletter $newsletter) {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Newsletter  $newsletter
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Newsletter $newsletter) {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Newsletter  $newsletter
     * @return \Illuminate\Http\Response
     */
    public function destroy(Newsletter $newsletter) {
        //
    }

}
