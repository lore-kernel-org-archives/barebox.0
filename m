Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x232.google.com ([2a00:1450:400c:c0c::232])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhtgS-0000T0-KD
 for barebox@lists.infradead.org; Wed, 16 Aug 2017 08:28:14 +0000
Received: by mail-wr0-x232.google.com with SMTP id y96so6936787wrc.1
 for <barebox@lists.infradead.org>; Wed, 16 Aug 2017 01:27:51 -0700 (PDT)
Received: from desktop (p57ACD258.dip0.t-ipconnect.de. [87.172.210.88])
 by smtp.gmail.com with ESMTPSA id f9sm745788wmf.18.2017.08.16.01.27.48
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 16 Aug 2017 01:27:49 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
In-Reply-To: <CALHxSV7KdxseT72B=-+MwAeTtZ9neeg7URpFtK17dxyqVaMfCA@mail.gmail.com>
References: <874ltanmak.fsf@gmail.com>
 <CALHxSV7KdxseT72B=-+MwAeTtZ9neeg7URpFtK17dxyqVaMfCA@mail.gmail.com>
Date: Wed, 16 Aug 2017 10:27:48 +0200
Message-ID: <87valnrk6z.fsf@gmail.com>
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
Subject: Re: Barebox and ext4 ? problems
To: barebox@lists.infradead.org

Simon Aittamaa <simon.aittamaa@gmail.com> writes:

> I think it was metadata_csum and 64bit...

You're right.

My SDCard was formatted months ago, I only used rsync for the updates.
But the eMMC was formatted afresh by a script from me. I found out with
the feature command "debugfs" that the partitions have different
features enables. In my case it was only 64bit, not metadata_csum.

I now use

	mkfs.ext4 -O ^64bit -F -j -L $label /dev/mmcblk0p$partition

to format it. It spits out some ugly warning that 64bit is the best
thing since sliced bread, but if you ignore this, then everything is
fine!

To get rid of this uglyness, I use:

	mkfs.ext4 -O ^64bit -F -j -L $label /dev/mmcblk0p$partition | \
		grep -v 64-bit | \
		grep -v 64bit

I think I'll post a patch to Barebox that either allows it to mount
partions with the 64bit feature. Or to refuse the mount with a proper
error message.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
