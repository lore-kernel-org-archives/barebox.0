Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f41.google.com ([74.125.82.41])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qvs9V-00040W-K4
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 14:40:31 +0000
Received: by wwj26 with SMTP id 26so3441168wwj.0
	for <barebox@lists.infradead.org>; Tue, 23 Aug 2011 07:40:25 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 23 Aug 2011 18:40:24 +0400
Message-ID: <CAA4bVAFi6B9fsNYn8KLor0_ObZVc2GmxXtwpeuaAC1N7Vt9H+Q@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] reference errors in OMAP documetation
To: barebox <barebox@lists.infradead.org>

Hi!

I posted this message some times ago, but nobody commented it.
So I reposting it.


I found some file reference errors in OMAP documentation.

I have made the patch, but I can't send it via git-send-email:
some lines in dox file are too long.

Here is the patch, please look at it:

http://prizma.bmstu.ru/~antony/barebox/0001-ARM-fix-formatting-and-file-ref=
erences-in-documentat.patch

I think, it's better reformat OMAP documentation to avoid long lines
troubles problems in the future.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
