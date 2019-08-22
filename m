Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gwD-0004JJ-1X
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:51:17 +0000
Received: from geraet.fritz.box (39-236-142-46.pool.kielnet.net
 [46.142.236.39]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id C57F51C000A
 for <barebox@lists.infradead.org>; Thu, 22 Aug 2019 06:51:10 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 08:50:59 +0200
Message-Id: <20190822065102.22024-1-ahmad@a3f.at>
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
Subject: [PATCH RFC 0/3] fs: tftp: don't use cached dentries
To: barebox@lists.infradead.org

I often mistype the name of files I place into the TFTP server's root
directory. When barebox does a TFTP lookup for the correct file name and
doesn't find it, it refuses to look it up again. I'd argue the better
user experience for TFTP in particular would be to not use the dcache
altogether. Not sure if other networked file systems should follow suit,
as staleness means faster acceses, but lets do this for TFTP now.

The file is still placed and invalidated from the cache though, but
compared to the network access before, it's negligible overhead.

Ahmad Fatoum (3):
  fs: tftp: remove duplicate header
  fs: provide no_revalidate_d_ops for network file systems
  fs: tftp: don't maintain tftp dentries in dcache

 fs/fs.c                | 9 +++++++++
 fs/tftp.c              | 2 +-
 include/linux/dcache.h | 2 ++
 3 files changed, 12 insertions(+), 1 deletion(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
