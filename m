Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QvDNm-0005PX-Gi
	for barebox@lists.infradead.org; Sun, 21 Aug 2011 19:08:31 +0000
Received: by wwf10 with SMTP id 10so3338433wwf.18
	for <barebox@lists.infradead.org>; Sun, 21 Aug 2011 12:08:26 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 21 Aug 2011 23:08:25 +0400
Message-ID: <CAA4bVAFnVrs0Q7hkgmmDGJK5FKRNt--UJZ5Y_j2+_c+bzX47pA@mail.gmail.com>
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
Subject: [RFC] fix loads command
To: barebox <barebox@lists.infradead.org>

Hi!

  I have fixed loads command (it works on my mips board), but there
are some questions:

  Do we need CONFIG_LOADS_BAUD_CHANGE option?
  Is there any reason to use getopt syntax for loads (see barebox's
loadb command for example)?

  I'm waiting for your comments.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
