Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZAC2k-0007GG-72
 for barebox@lists.infradead.org; Wed, 01 Jul 2015 07:02:50 +0000
Received: by lbcui10 with SMTP id ui10so6978105lbc.0
 for <barebox@lists.infradead.org>; Wed, 01 Jul 2015 00:02:28 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 1 Jul 2015 09:02:28 +0200
Message-ID: <CABQt-UnvAoFHp_4LJvH0Q6AFw8US2vhcb_nOGGmjfAaCXrOFWQ@mail.gmail.com>
From: Philippe Leduc <ledphilippe@gmail.com>
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
Subject: how to do a digest on a flashed uImage ?
To: barebox@lists.infradead.org

Hello,

I have a uImage saved in a memory partition and I am able to boot on
it with bootm command. I would like to add a digest (like a
hmac(sha1)) in order to check the integrity of the binary before
booting on it.

Because my partition is bigger than my uImage, I don't know how to use
digest on it.
In fact there are two problems that I don't know how to solve: I can't
get the size of my file and I can't ask digest to work on COUNT bytes.

For the size problem: I can extract the size of the uImage in binary
form since this information is present in the uImage header (via
memcpy), but I don't know how to convert it in a format compatible
with Hush.

For digest, I can copy the binary in the RAM, but I fear that it is
longer than working on the flash: it takes 4,8s to memcpy the uImage
in a RAM file, and less than 3s to bootm on the flash. But


Do you know a way to get the size of a file? Or to convert a binary
size into a "human readable format" for Hush? Or should I develop a
kind of "stat" utility for barebox?
Thank you in advance,

I hope my explanation is not too convoluted :)

Thank you in advance,

Best regards,

--
Philippe LEDUC
ledphilippe@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
