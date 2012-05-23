Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SXA2Z-0006iM-EB
 for barebox@lists.infradead.org; Wed, 23 May 2012 11:47:45 +0000
Received: from eb-e6520 (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 249BC4B014E
 for <barebox@lists.infradead.org>; Wed, 23 May 2012 13:47:34 +0200 (CEST)
Date: Wed, 23 May 2012 13:47:33 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120523134733.6164c4fb@eb-e6520>
In-Reply-To: <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
References: <CAONxwYOZtob20_ao-A-p2TXXLESsLLKadiARUX9drFK=nvJQcQ@mail.gmail.com>
 <20120522184240.GM30400@pengutronix.de>
 <CAONxwYOOSCcUQY7wRy8wrdmWGLrjPfchxY1raxBA034gKCk9KQ@mail.gmail.com>
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
Subject: Re: Booting mx25 based device from SD and NOR
To: barebox@lists.infradead.org

Le Wed, 23 May 2012 12:43:47 +0200,
Roberto Nibali <rnibali@gmail.com> a =E9crit :
> Set the switches to boot from SD on the mx25 device and power on. It
> successfully loads barebox and I can mount the fat partition (of course t=
he
> other partition is unmountable, because there is no ext2/3 support in
> barebox). Booting from my environment currently fails, but I reckon it has
> to do with my configuration settings. Here is where it gets so far:
> .../...
> [  103.029081] VFS: Unable to mount root fs via NFS, trying floppy.
> [  103.036763] VFS: Cannot open root device "nfs" or unknown-block(2,0)
> [  103.043157] Please append a correct "root=3D" boot option; here are the
> available partitions:
> [  103.052007] b300         1955840 mmcblk0  driver: mmcblk
> [  103.057512]   b301            1024 mmcblk0p1
> 00000000-0000-0000-0000-000000000mmcblk0p1
> [  103.065670]   b302          524288 mmcblk0p2
> 00000000-0000-0000-0000-000000000mmcblk0p2
> [  103.073744]   b303         1429504 mmcblk0p3
> 00000000-0000-0000-0000-000000000mmcblk0p3
> .../...
> Thank you very much for your pointers.
> =

add to your bootargs root=3D/dev/mmcblk0p3 rootfstype=3Dext3 or something
like this

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
