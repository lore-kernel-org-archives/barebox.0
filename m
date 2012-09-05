Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9Dcu-0004Zs-N6
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 11:18:33 +0000
Received: by wgbdt14 with SMTP id dt14so331846wgb.18
 for <barebox@lists.infradead.org>; Wed, 05 Sep 2012 04:18:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <50473122.90906@webware-experts.de>
References: <50462CE6.10607@webware-experts.de>
 <1346825557.3625.4.camel@lws-weitzel>
 <50471A79.6070707@webware-experts.de> <1346838098.3625.10.camel@lws-weitzel>
 <504722D8.1050409@webware-experts.de> <20120905105323.GE26594@pengutronix.de>
 <50473122.90906@webware-experts.de>
From: Anand Gadiyar <gadiyar@gmail.com>
Date: Wed, 5 Sep 2012 16:48:09 +0530
Message-ID: <CAO-mwNfB4bqgFbK7Q5bfPffqUZDVkwNKbY=9W1it+zuDAEJH+A@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7113780619976151218=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: MLO doesn't work, rest is ok
To: Norbert Roos <nroos@webware-experts.de>
Cc: barebox@lists.infradead.org

--===============7113780619976151218==
Content-Type: multipart/alternative; boundary=0016364d279bcef0c004c8f28829

--0016364d279bcef0c004c8f28829
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Sep 5, 2012 at 4:31 PM, Norbert Roos <nroos@webware-experts.de>wrote:

> On 09/05/2012 12:53 PM, Sascha Hauer wrote:
>
>  What gcc version do you have?
>>
>
> gcc version 4.6.3 (Ubuntu/Linaro 4.6.3-1ubuntu5)
>
> Is there something which i could quickly check in the MLO, a checksum for
> example? Only if you know something, otherwise i can look it up in the OMAP
> manual, what he is doing to accept the MLO.
>
> As i said, it seems he doesn't like the MLO, because he's skipping to the
> next boot source..
>



What is the size of the generated MLO file?

- Anand

--0016364d279bcef0c004c8f28829
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Wed, Sep 5, 2012 at 4:31 PM, Norbert =
Roos <span dir=3D"ltr">&lt;<a href=3D"mailto:nroos@webware-experts.de" targ=
et=3D"_blank">nroos@webware-experts.de</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">

<div class=3D"im">On 09/05/2012 12:53 PM, Sascha Hauer wrote:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
What gcc version do you have?<br>
</blockquote>
<br></div>
gcc version 4.6.3 (Ubuntu/Linaro 4.6.3-1ubuntu5)<br>
<br>
Is there something which i could quickly check in the MLO, a checksum for e=
xample? Only if you know something, otherwise i can look it up in the OMAP =
manual, what he is doing to accept the MLO.<br>
<br>
As i said, it seems he doesn&#39;t like the MLO, because he&#39;s skipping =
to the next boot source..<span class=3D"HOEnZb"><font color=3D"#888888"><br=
></font></span></blockquote><div></div><div><br><br><br>What is the size of=
 the generated MLO file?<br>

<br>- Anand<br><br></div></div><br>

--0016364d279bcef0c004c8f28829--


--===============7113780619976151218==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============7113780619976151218==--
