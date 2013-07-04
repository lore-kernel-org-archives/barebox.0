Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from lvps83-169-36-49.dedicated.hosteurope.de ([83.169.36.49]
 helo=knowtrek.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uujmk-0000DN-Ug
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 13:41:23 +0000
Received: from [192.168.10.59] (p4FC11FE1.dip0.t-ipconnect.de [79.193.31.225])
 by knowtrek.com (Postfix) with ESMTPSA id EE9C02EF831C
 for <barebox@lists.infradead.org>; Thu,  4 Jul 2013 15:40:48 +0200 (CEST)
Message-ID: <51D57B60.3020003@knowtrek.com>
Date: Thu, 04 Jul 2013 15:40:48 +0200
From: Adam Furmanczuk <afurmanczuk@knowtrek.com>
MIME-Version: 1.0
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
Subject: Using older barebox  (>2012.04) to load new barebox?
To: barebox@lists.infradead.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi all,

on my ICnova mx53 so dimm board I am currently bound to barebox
version 2012.03.0-00162. There is no "global" and no "go" procedure,
that help me in current barebox release.

Runing "bootm /mnt/barebox.bin"
where barebox.bin is the compiled 2013.05 or 2013.06 version does not
work, output: "Unknown OS type"..

There is however the "bootsrc" variable, how can I find more variables?
For example eth0 exists, and devinfo eth0 gives me network configuration

I wanted to somehow "chainload" one barebox into the other. How can I
achieve that? Flashing is currently no option, I have too little
experience with openocd.

Greetings,

Adam
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAlHVe2AACgkQefEEI87R1Dd2SwCfcmWQKrbwxxLRqLMOoRWeJ68b
zw4AoMB+3aAFoPDDtC+LsOV7Noo4/IBU
=S1TZ
-----END PGP SIGNATURE-----

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
