Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S5dfO-000269-Ud
 for barebox@lists.infradead.org; Thu, 08 Mar 2012 13:46:03 +0000
Received: by eaak13 with SMTP id k13so179491eaa.36
 for <barebox@lists.infradead.org>; Thu, 08 Mar 2012 05:46:00 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20120308131134.GO12248@game.jcrosoft.org>
References: <CAACwST+JNsH0Yic-SbuA+6sYCWq-cE=M_nEy+ybgJebKZ4hY1Q@mail.gmail.com>
 <20120308131134.GO12248@game.jcrosoft.org>
Date: Thu, 8 Mar 2012 15:45:59 +0200
Message-ID: <CAACwSTJQu-mrt+x9=tgipTr+XTPQT+xGqV2zw+NBCfoYn3H=RQ@mail.gmail.com>
From: George Stefan <stefan.george87@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0938653143870286389=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: __bss_stop question
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

--===============0938653143870286389==
Content-Type: multipart/alternative; boundary=0015174be40e0b3a5d04babb7f83

--0015174be40e0b3a5d04babb7f83
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

=CEn data de 8 martie 2012, 15:11, Jean-Christophe PLAGNIOL-VILLARD <
plagnioj@jcrosoft.com> a scris:

> On 14:23 Thu 08 Mar     , George Stefan wrote:
> >    Hello all,
> >    Is __bss_stop the end of barebox.bin?
> >    Meaning that, if i have i file which i dd it with offset=3D768
> >    could i refer to it with __bss_stop.
> >    Should i consider also the bareboxenv, meaning that
> >    the end of barebox.bin is __bss_stop + sizeof(bareboxenv)?
> >    PS: board is imx53 loco
> the env is where you want
>
> and barebox_image_size will give you the size of barebox
>
> and the end of barebox is __bss_start
>
> Best Regards,
> J.
>

Thanks for the reply.
So, if i do something like
dd if=3Dbarebox.bin of=3D/dev/mmcblk0 bs=3D512 && sync\
and
dd if=3DuImage of=3D/dev/mmcblk0 bs=3D512 seek=3D768 && sync
how could i access the contents of uimage within barebox?
Since " the end of barebox is __bss_start" should it be __bss_start?
Regards,
George!

--0015174be40e0b3a5d04babb7f83
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">=CEn data de 8 martie 2012, 15:11, Jean-=
Christophe PLAGNIOL-VILLARD <span dir=3D"ltr">&lt;<a href=3D"mailto:plagnio=
j@jcrosoft.com" target=3D"_blank">plagnioj@jcrosoft.com</a>&gt;</span> a sc=
ris:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div><div></div><div>On 14:23 Thu 08 Mar =A0 =A0 , George Stefan wrote:<br>
&gt; =A0 =A0Hello all,<br>
&gt; =A0 =A0Is __bss_stop the end of barebox.bin?<br>
&gt; =A0 =A0Meaning that, if i have i file which i dd it with offset=3D768<=
br>
&gt; =A0 =A0could i refer to it with __bss_stop.<br>
&gt; =A0 =A0Should i consider also the bareboxenv, meaning that<br>
&gt; =A0 =A0the end of barebox.bin is __bss_stop + sizeof(bareboxenv)?<br>
&gt; =A0 =A0PS: board is imx53 loco<br>
</div></div>the env is where you want<br>
<br>
and barebox_image_size will give you the size of barebox<br>
<br>
and the end of barebox is __bss_start<br>
<br>
Best Regards,<br>
<font color=3D"#888888">J.<br>
</font></blockquote></div><br><div>Thanks for the reply.</div><div>So, if i=
 do something like=A0</div><div>dd if=3Dbarebox.bin of=3D/dev/mmcblk0 bs=3D=
512 &amp;&amp; sync\</div><div>and=A0</div><div>dd if=3DuImage of=3D/dev/mm=
cblk0 bs=3D512 seek=3D768 &amp;&amp; sync</div>
<div>how could i access the contents of uimage within barebox?</div><div>Si=
nce &quot;=A0the end of barebox is __bss_start&quot; should it be __bss_sta=
rt?</div><div>Regards,</div><div>George!</div><meta http-equiv=3D"content-t=
ype" content=3D"text/html; charset=3Dutf-8">
<div><br></div>

--0015174be40e0b3a5d04babb7f83--


--===============0938653143870286389==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0938653143870286389==--
