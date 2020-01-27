Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout11.rmx.de ([94.199.88.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0qI-00056V-3B
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 09:38:03 +0000
Received: from kdin01.retarus.com (unknown [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout11.rmx.de (Postfix) with ESMTPS id 485l6G3HStz3yZb
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 10:37:58 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 485l6C21czz2ywg
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 10:37:55 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Mon, 27 Jan 2020 10:37:53 +0100
Message-ID: <7624877.e5WoEmy3uL@n95hx1g2>
In-Reply-To: <153b40a5-3a31-da30-dfbb-9d2eeb82c426@pengutronix.de>
References: <20200127074639.17310-1-ceggers@arri.de>
 <153b40a5-3a31-da30-dfbb-9d2eeb82c426@pengutronix.de>
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
Subject: Re: [PATCH] bootchooser: Change name of kernel parameter
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

Hello Ahmad,

> Existing userspace like RAUC[1] rely on this naming, so the default may
> not be changed.
> 
> [1]: https://github.com/rauc/rauc/blob/f52978d9736f18794f7e277ca440e2e4e78c9703/src/context.c#L47
that is what I already suspected...

For my initramfs (klibc based), I need a very cheap solution for mounting the "right" root fs. Currently
I work only with standard utilities (sh, mount, cat, ...) and I avoid creating a own program for this.
I had just success with the following expression

read CMDLINE < /proc/cmdline
if [ "${CMDLINE#bootchooser.active=system1}" != "${CMDLINE}" ]; then
	root=ubi0:rootfs1
else
	root=ubi0:rootfs0
fi
mount -t ubifs $root /root

If the string "bootchooser.active=system1" appears on the command line, the expression will match.
This way I can distinguish between "system1" and "system0".

As the result, my previous patch should be dropped.

regards
Christian





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
