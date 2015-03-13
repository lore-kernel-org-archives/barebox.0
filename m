Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0b-00176a03.pphosted.com ([67.231.157.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YWRqN-0008Cp-6Y
 for barebox@lists.infradead.org; Fri, 13 Mar 2015 15:49:48 +0000
Received: from pps.filterd (m0048299.ppops.net [127.0.0.1])
 by m0048299.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id t2DFh3Kg008144
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 11:49:23 -0400
Received: from alpmlip12.e2k.ad.ge.com (n165-156-000-000.static.ge.com
 [165.156.5.1] (may be forged))
 by m0048299.ppops.net-00176a03. with ESMTP id 1t422qg1b6-6
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 11:49:23 -0400
Received: from [3.26.68.149] (unknown [3.26.68.149])
 by selma.edi.geip.ge.com (Postfix) with ESMTP id D6F67E0775
 for <barebox@lists.infradead.org>; Fri, 13 Mar 2015 15:49:12 +0000 (GMT)
Message-ID: <550306F8.9050107@ge.com>
Date: Fri, 13 Mar 2015 15:49:12 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
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
Subject: ARM: UBI/UBIFS on spi-nor
To: barebox@lists.infradead.org

Hello,
I have a cortex-A9 based platform featuring a spi-nor (n25q256a).
I have disabled 4KB sector for this spi-nor in order to use UBI/UBIFS.

So far I can ubiattach, mount and copy small files (~65KB or 2 sectors)
to ramfs. Copying a bigger file (512KB) leads to a read failure
(ubifs_search_zbranch fails to find matching keys) and only part of the
file is copied (always the same amount).

With Linux, I have not seen any issue and the boot loader SPI driver I
ported seems to work fine as write-read-compare pass.

Has anybody used UBI/UBIFS on spi-nor successfully or seen a similar issue?

cheers.





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
