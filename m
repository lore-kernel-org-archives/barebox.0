Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OQYiP-0007wo-08
	for barebox@lists.infradead.org; Mon, 21 Jun 2010 04:34:33 +0000
Received: by wyg36 with SMTP id 36so2242341wyg.36
	for <barebox@lists.infradead.org>; Sun, 20 Jun 2010 21:34:31 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 21 Jun 2010 06:34:31 +0200
Message-ID: <AANLkTilzfYtRwI1kdFG0O53fRz9NApQnW0P98dZEK-Yo@mail.gmail.com>
From: Jose Luis Zabalza <jlz.3008@gmail.com>
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
Subject: Fat32 support
To: barebox@lists.infradead.org

Hello All.

A simple question. Is it posible read a file on fat32 USB memory
device from barebox?

If not, is it posible write some code to do this? What steps will be necess=
ary?
- port from linux kernel usb-storage support.?
- port form linux kernel fat 32 support?

My final objetive is firmwarize the board from a USB fat32 USB memory
device with a new barebox "firmwarize" command because I am surprised
that there is not on barebox?

Thanks in avance


-- =

Jos=E9 Luis Zabalza
jlz.3008  a t  gmail.com
Linux Counter 172551

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
