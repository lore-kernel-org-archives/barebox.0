Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qm2HK-0004Um-4P
	for barebox@lists.infradead.org; Wed, 27 Jul 2011 11:27:54 +0000
Received: by wwf22 with SMTP id 22so888295wwf.18
	for <barebox@lists.infradead.org>; Wed, 27 Jul 2011 04:27:50 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 27 Jul 2011 15:27:50 +0400
Message-ID: <CAA4bVAHQpMR8eetVhtR3eSqc3RTT77pQFTS9UCzDMw9YzhqP1Q@mail.gmail.com>
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
Subject: ioports.h is unused
To: barebox <barebox@lists.infradead.org>

Hi!

File include/ioports.h is unused.

"grep -RHn ioports" in barebox tree give no results.

Can we remove it?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
