Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.icid.cu ([200.55.133.90])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZOlz5-0007RT-Fs
 for barebox@lists.infradead.org; Mon, 10 Aug 2015 12:15:22 +0000
Received: from icid.cu ([10.10.0.3])
 by mail.icid.cu (8.13.8/8.13.8) with ESMTP id t7ABElHQ013894
 for <barebox@lists.infradead.org>; Mon, 10 Aug 2015 07:14:50 -0400
Received: from [10.10.8.78] by icid.cu
 (Cipher TLSv1:RC4-MD5:128) (MDaemon PRO v9.6.1)
 with ESMTP id md50008243970.msg
 for <barebox@lists.infradead.org>; Mon, 10 Aug 2015 07:31:38 -0400
Message-ID: <55C8960F.8000700@icid.cu>
Date: Mon, 10 Aug 2015 08:16:15 -0400
From: Roberto Alejandro Espi Munoz <raespi@icid.cu>
MIME-Version: 1.0
References: <55C4C388.9060102@icid.cu>
 <20150807194104.b02642e26c441e906a1deeca@gmail.com>
 <55C50118.3080202@icid.cu>
 <20150808182330.a52abdc75132a0f1fafd440e@gmail.com>
In-Reply-To: <20150808182330.a52abdc75132a0f1fafd440e@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: serial port weird chars ...
To: barebox@lists.infradead.org

Supposing that's the issue, is there an option in barebox that I could 
use to circumvent this ?

Thanks for the replies ...

On 08/08/2015 11:23 AM, Antony Pavlov wrote:
> On Fri, 07 Aug 2015 15:03:52 -0400
> Roberto Alejandro Espi Munoz <raespi@icid.cu> wrote:
>
>> Both scenarios work well on another host.  On my host serial port when
>> interacting with one bootloader the communication is fine and with
>> barebox fails.  When using a USB-serial adapter there's no problem.
>> Perhaps there's a problem on my board but why does the first connection
>> work and with barebox doesn't ?
> May be barebox programs UART clocks in a slightly different way than S3C2440A USB Downloader does,
> so waveform for one character is too short or too long for your host computer UART receiver?
>
> IMHO a logic analyzer can help you. Use it to compare output mini2440 UART waveform from USB Downloader
> with output UART waveform from barebox.
>
>> On 08/07/2015 12:41 PM, Antony Pavlov wrote:
>>> On Fri, 07 Aug 2015 10:41:12 -0400
>>> Roberto Alejandro Espi Munoz <raespi@icid.cu> wrote:
>>>
>>>> Hi ... I'm currently having some trouble with displaying characters
>>>> correctly in my terminal.  I'm using a board equivalent to the
>>>> mini2440.  This one has a NOR and a NAND.  I connect to it over a serial
>>>> port interface.  When I boot up the board in debug mode I'm able to see
>>>> clearly the messages displayed by the S3C2440A USB Downloader which is
>>>> copied in the NOR interface, I then download my barebox binary over the
>>>> USB interface and when it boots I get a lot of weird characters on
>>>> screen.  The console seems to respond correctly, I issue for example the
>>>> "reset" command and it resets but I can't make out what is displayed.
>>>> I was guessing at first a serial port configuration problem on my
>>>> operating system (I use Linux), tried it over on Windows and same
>>>> effect, the first bootloader works great and barebox when starting just
>>>> mangles the characters.
>>>>
>>>> The other weird problem is than when I use a USB-Serial converter to
>>>> connect to the board's serial port everything works !
>>>>
>>>> I'm currently using barebox 2012.09 and OpenSuse Linux 13.2
>>>>
>>>> Any ideas ? thanks
>>> You have the problem if you use your host computer motherboard serial port (no matter, Linux or Windows),
>>> isn't it?
>>> And no problem if you use USB-Serial dongle. So it looks like host serial port problem.
>>>
>>> Could you try to connect the board to another host computer?
>>>
>>> -- 
>>> Best regards,
>>>     Antony Pavlov
>>>
>>> _______________________________________________
>>> barebox mailing list
>>> barebox@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/barebox
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
