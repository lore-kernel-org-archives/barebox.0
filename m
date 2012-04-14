Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ79Q-0001wN-Dy
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 17:52:46 +0000
Received: from eb-e6520 (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id E61ECA625D
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 19:52:37 +0200 (CEST)
Date: Sat, 14 Apr 2012 19:52:36 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120414195236.353b42df@eb-e6520>
In-Reply-To: <1334420262-4823-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120414161509.GC30672@game.jcrosoft.org>
 <1334420262-4823-1-git-send-email-plagnioj@jcrosoft.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/3] beagle: add default env support
To: barebox@lists.infradead.org

Le Sat, 14 Apr 2012 18:17:40 +0200,
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :

> update defconfig too to support oftree
> =

.../...
> +# can be either 'nfs', 'tftp' or 'nand'
> +kernel_loc=3Dnfs
> +# can be either 'net', 'nand' or 'initrd'
> +rootfs_loc=3Dnet
> +# can be either 'nfs', 'tftp', 'nand' or empty
> +oftree_loc=3Dnfs
> +
I understand that NFS can be useful for development, but I think we
should have a default configuration for the "standard" way to use the
board. In the present case, this is booting from a SDCard and not from
NFS.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
