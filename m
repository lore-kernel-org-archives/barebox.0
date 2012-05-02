Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SPdV1-0006M7-CN
 for barebox@lists.infradead.org; Wed, 02 May 2012 17:38:00 +0000
Received: by pbbrq13 with SMTP id rq13so1474996pbb.36
 for <barebox@lists.infradead.org>; Wed, 02 May 2012 10:37:57 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 2 May 2012 21:37:57 +0400
Message-ID: <CAA4bVAF2pVHxuqUO4b5vU=HKnCUtocLfwVS0MqQiF-vX0Ud8KA@mail.gmail.com>
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
Subject: improved complete support: the list of available variable name
 completions is dubbed
To: barebox <barebox@lists.infradead.org>

Hi, All!

I have tested improved complete support in barebox.

I have found that the list of available variable name completions is
dubbed, e.g.

barebox:/ echo $<TAB>
$PATH               $net.nameserver     $net.domainname
$cs0.baudrate       $cs0.active         $cs1.active
$cs1.ip             $cs1.port           $eth0.ipaddr
$eth0.ethaddr       $eth0.gateway       $eth0.netmask
$eth0.serverip      $PATH               $net.nameserver
$net.domainname     $cs0.baudrate       $cs0.active
$cs1.active         $cs1.ip             $cs1.port
$eth0.ipaddr        $eth0.ethaddr       $eth0.gateway
$eth0.netmask       $eth0.serverip
barebox:/

This barebox build is based on the 'next' git branch, last commit is

commit e4e3fbd22bca38f10f1cd7a3f5eb75e0b265dcaa
Merge: 8ca4264 9492976
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Tue May 1 21:41:59 2012 +0200

    Merge tag 'complete_update_support' of git://git.jcrosoft.org/barebo

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
