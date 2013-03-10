Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f51.google.com ([209.85.160.51])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEpN2-0005Wg-Qs
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 23:09:37 +0000
Received: by mail-pb0-f51.google.com with SMTP id un15so3042387pbc.24
 for <barebox@lists.infradead.org>; Sun, 10 Mar 2013 16:09:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20130310230119.GT1906@pengutronix.de>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
 <1362871182-25726-5-git-send-email-vicencb@gmail.com>
 <20130310131601.GA11170@game.jcrosoft.org>
 <CAAMcf8AGOExgear8jxE7fLBvHB2emnWffZ5hfXE1U6LgwfqOGw@mail.gmail.com>
 <20130310223510.GR1906@pengutronix.de>
 <CAAMcf8Afx3XxD5okHu7FiAJs8JPD+E7PSZVC3MGUryOz+GMTwQ@mail.gmail.com>
 <20130310230119.GT1906@pengutronix.de>
Date: Mon, 11 Mar 2013 00:09:35 +0100
Message-ID: <CAAMcf8Beuk6n9zoyEhpHVMbp99Y6FROR8-QmuN60=GM_ceSzCg@mail.gmail.com>
From: vj <vicencb@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/9] omap_uart: add low level port serial initialization
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 11, 2013 at 12:01 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sun, Mar 10, 2013 at 11:44:31PM +0100, vj wrote:
>> >
>> > You can't access global variables at that state. They are
>> > addressed with their absolute address which will not be correct
>> > when you are not running at the linked address. You can simply
>> > verify that by doing a PUTHEX_LL("somestring"); You will see
>> > the address the string is located when running from the correct
>> > address.
>> >
>> > Sascha
>> >
>> > --
>> > Pengutronix e.K.                           |                             |
>> > Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>> > Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>> So the problem is not with PUTS_LL, it's with who calls it that should
>> modify the string pointer accordingly.
>> And what are the limitations of not having stack? local variables,
>> calling non-inline functions, more?
>
> Local variables work fine.
> Without stack you can only use __naked functions. With these the
> compiler does not save the registers to the stack and you can't return
> from them. This means a function should always end with a call to
> another function. Normally you should only setup a stack here and call
> a function which then can use it.
>
> Another limitation is that you can only pass three arguments to a
> function, more arguments would be pushed on the stack.
>
> Also functions must not become too complex, because otherwise the
> compiler would make use of the stack inside the function.
>
> The typical register write stuff you normally do in such lowlevel
> init work fine.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

Thanks for the explanation!

Regards,
  Vicente.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
