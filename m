Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1ROqX5-0005rb-FM
 for barebox@lists.infradead.org; Fri, 11 Nov 2011 12:48:36 +0000
In-Reply-To: <20111111104150.GA15318@game.jcrosoft.org>
References: <1321002211-14950-1-git-send-email-J.Kilb@phytec.de>
 <20111111104150.GA15318@game.jcrosoft.org>
MIME-Version: 1.0
Message-ID: <OF9BFDE307.B64778A4-ONC1257945.0045FDD1-C1257945.00465A60@phytec.de>
From: =?ISO-8859-1?Q?J=FCrgen_Kilb?= <J.Kilb@phytec.de>
Date: Fri, 11 Nov 2011 13:48:25 +0100
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2623495627582618973=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Antwort: Re: [PATCH] Remove md5,sh1,sh2 from lib/Makefile.
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============2623495627582618973==
Content-Type: multipart/alternative; boundary="=_alternative 00465A5FC1257945_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 00465A5FC1257945_=
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Jean,
I was a bit to hasty. Sorry !
So just to clarify

Commit 4ac3a1f9 was ok.

Best regards,
J=FCrgen

> On 10:03 Fri 11 Nov     , Juergen Kilb wrote:
> > Commit 4ac3a1f9 has moved the files md5.c, sh1.c
> > and sh2.c from lib/* to crypto/*.
> > But the files were still listed in lib/Makefile.
> the commit modify the Makefile correctly sn other comit breakit
> >=20
> > Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
> Sacha send a fix already
>=20
> Best Regards,
> J.

--=_alternative 00465A5FC1257945_=
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

<tt><font size=3D2>Hi Jean,</font></tt>
<br><tt><font size=3D2>I was a bit to hasty. Sorry !</font></tt>
<br><tt><font size=3D2>So just to clarify</font></tt>
<br>
<br><tt><font size=3D2>Commit 4ac3a1f9 was ok.</font></tt>
<br>
<br><tt><font size=3D2>Best regards,</font></tt>
<br><tt><font size=3D2>J=FCrgen</font></tt>
<br>
<br><tt><font size=3D2>&gt; On 10:03 Fri 11 Nov &nbsp; &nbsp; , Juergen Kilb
wrote:<br>
&gt; &gt; Commit 4ac3a1f9 has moved the files md5.c, sh1.c<br>
&gt; &gt; and sh2.c from lib/* to crypto/*.<br>
&gt; &gt; But the files were still listed in lib/Makefile.<br>
&gt; the commit modify the Makefile correctly sn other comit breakit<br>
&gt; &gt; <br>
&gt; &gt; Signed-off-by: Juergen Kilb &lt;J.Kilb@phytec.de&gt;<br>
&gt; Sacha send a fix already<br>
&gt; <br>
&gt; Best Regards,<br>
&gt; J.<br>
</font></tt>
--=_alternative 00465A5FC1257945_=--


--===============2623495627582618973==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2623495627582618973==--
