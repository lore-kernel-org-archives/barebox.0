Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo4.mail-out.ovh.net ([188.165.44.50]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SPob4-00059y-GD
 for barebox@lists.infradead.org; Thu, 03 May 2012 05:29:00 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 56CEB104E6C7
 for <barebox@lists.infradead.org>; Thu,  3 May 2012 07:30:19 +0200 (CEST)
Date: Thu, 3 May 2012 07:07:27 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120503050727.GN16762@game.jcrosoft.org>
References: <CAA4bVAF2pVHxuqUO4b5vU=HKnCUtocLfwVS0MqQiF-vX0Ud8KA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAF2pVHxuqUO4b5vU=HKnCUtocLfwVS0MqQiF-vX0Ud8KA@mail.gmail.com>
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
Subject: Re: improved complete support: the list of available variable name
 completions is dubbed
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On 21:37 Wed 02 May     , Antony Pavlov wrote:
> Hi, All!
> =

> I have tested improved complete support in barebox.
> =

> I have found that the list of available variable name completions is
> dubbed, e.g.
I just test it again on malta

# qemu-system-mips64 -nodefaults -M malta -m 256 -nographic -serial stdio -=
monitor null -bios build/malta-64/barebox.bin =



barebox 2012.04.0-00049-ga88907a #0 Thu May 3 12:43:17 CST 2012


Board: qemu malta
registered netconsole as cs1
## Unknown FLASH on Bank at 0x1e000000 - Size =3D 0x00000000 =3D 0 MB
Malloc space: 0xa0400000 -> 0xa07fffff (size  4 MB)
Open /dev/env0 No such file or directory
running /env/bin/init...
not found
barebox:/ echo $
$net.nameserver     $net.domainname     $cs0.baudrate =

$cs0.active         $cs1.active         $cs1.ip =

$cs1.port           $net.nameserver     $net.domainname =

$cs0.baudrate       $cs0.active         $cs1.active =

$cs1.ip             $cs1.port           =

barebox:/ echo $
$net.nameserver     $net.domainname     $cs0.baudrate =

$cs0.active         $cs1.active         $cs1.ip =

$cs1.port           $net.nameserver     $net.domainname =

$cs0.baudrate       $cs0.active         $cs1.active =

$cs1.ip             $cs1.port           =

barebox:/ echo $
$net.nameserver     $net.domainname     $cs0.baudrate =

$cs0.active         $cs1.active         $cs1.ip =

$cs1.port           $net.nameserver     $net.domainname =

$cs0.baudrate       $cs0.active         $cs1.active =

$cs1.ip             $cs1.port           =


Best Regards,
J.

> =

> barebox:/ echo $<TAB>
> $PATH               $net.nameserver     $net.domainname
> $cs0.baudrate       $cs0.active         $cs1.active
> $cs1.ip             $cs1.port           $eth0.ipaddr
> $eth0.ethaddr       $eth0.gateway       $eth0.netmask
> $eth0.serverip      $PATH               $net.nameserver
> $net.domainname     $cs0.baudrate       $cs0.active
> $cs1.active         $cs1.ip             $cs1.port
> $eth0.ipaddr        $eth0.ethaddr       $eth0.gateway
> $eth0.netmask       $eth0.serverip
> barebox:/
> =

> This barebox build is based on the 'next' git branch, last commit is
> =

> commit e4e3fbd22bca38f10f1cd7a3f5eb75e0b265dcaa
> Merge: 8ca4264 9492976
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Tue May 1 21:41:59 2012 +0200
> =

>     Merge tag 'complete_update_support' of git://git.jcrosoft.org/barebo
> =

> -- =

> Best regards,
> =A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
