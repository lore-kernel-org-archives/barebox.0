Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pzpna-0004Fx-Pi
	for barebox@lists.infradead.org; Wed, 16 Mar 2011 12:25:59 +0000
Received: by eyh6 with SMTP id 6so428467eyh.36
	for <barebox@lists.infradead.org>; Wed, 16 Mar 2011 05:25:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <4D80A767.2040408@pobox.com>
References: <4d701d31.9009d80a.2cd3.5e72@mx.google.com>
	<4D80A767.2040408@pobox.com>
Date: Wed, 16 Mar 2011 13:25:55 +0100
Message-ID: <AANLkTi=neFvdNQOvrvKJ-hYpkfy+r-F3wxmUPbgtLW_p@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0820142468=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 02/54] Add arch/nios2/Makefile
To: Shinya Kuribayashi <skuribay@pobox.com>
Cc: barebox@lists.infradead.org

--===============0820142468==
Content-Type: multipart/alternative; boundary=0015174c46468097ee049e98a562

--0015174c46468097ee049e98a562
Content-Type: text/plain; charset=ISO-8859-1

2011/3/16 Shinya Kuribayashi <skuribay@pobox.com>

> On 3/4/11 7:58 AM, franck.jullien@gmail.com wrote:
>
>> @@ -0,0 +1,31 @@
>> +CPPFLAGS += -fno-strict-aliasing
>> +
>> +board-$(CONFIG_GENERIC) := generic
>> +cpu-$(CONFIG_NIOS2)    := nios2
>>
>
> Any other processor core types other than 'nios2?'  Can we name
> it just arch/nios2/cpu/, not arch/nios2/cpu-nios2/?
>
>
You're right, I'll rename it.

Franck.

--0015174c46468097ee049e98a562
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">2011/3/16 Shinya Kuribayashi <span dir=
=3D"ltr">&lt;<a href=3D"mailto:skuribay@pobox.com">skuribay@pobox.com</a>&g=
t;</span><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex;">
<div class=3D"im">On 3/4/11 7:58 AM, <a href=3D"mailto:franck.jullien@gmail=
.com" target=3D"_blank">franck.jullien@gmail.com</a> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
@@ -0,0 +1,31 @@<br>
+CPPFLAGS +=3D -fno-strict-aliasing<br>
+<br>
+board-$(CONFIG_GENERIC) :=3D generic<br>
+cpu-$(CONFIG_NIOS2) =A0 =A0:=3D nios2<br>
</blockquote>
<br></div>
Any other processor core types other than &#39;nios2?&#39; =A0Can we name<b=
r>
it just arch/nios2/cpu/, not arch/nios2/cpu-nios2/?<br>
<br>
</blockquote></div><br><div>You&#39;re right, I&#39;ll rename it.</div><div=
><br></div><div>Franck.</div>

--0015174c46468097ee049e98a562--


--===============0820142468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0820142468==--
