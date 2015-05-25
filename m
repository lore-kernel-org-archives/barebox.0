Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0a-00176a03.pphosted.com ([67.231.149.52])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YwwTa-0004iA-Ne
 for barebox@lists.infradead.org; Mon, 25 May 2015 17:47:47 +0000
Received: from pps.filterd (m0047961.ppops.net [127.0.0.1])
 by m0047961.ppops.net-00176a03. (8.14.7/8.14.7) with SMTP id t4PHju6K020785
 for <barebox@lists.infradead.org>; Mon, 25 May 2015 13:47:19 -0400
Received: from alpmlip13.e2k.ad.ge.com (n165-156-000-000.static.ge.com
 [165.156.5.1] (may be forged))
 by m0047961.ppops.net-00176a03. with ESMTP id 1um738r2xm-2
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Mon, 25 May 2015 13:47:19 -0400
Received: from [3.26.68.149] (unknown [3.26.68.149])
 by selma.edi.geip.ge.com (Postfix) with ESMTP id 6EF3BE1D0A
 for <barebox@lists.infradead.org>; Mon, 25 May 2015 18:47:17 +0100 (BST)
Message-ID: <55636025.4050508@ge.com>
Date: Mon, 25 May 2015 18:47:17 +0100
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
Subject: Memtest failed. Error: -22
To: barebox@lists.infradead.org

I just used memtest on a couple of PPC board (freescale mpc8544 and
P1014) and it failed with:

barebox>/ memtest
Memtest failed. Error: -22

This error happens when the space between two regions is smaller than a
page size:
 0x0bf75000 - 0x0ff74fff (size 0x04000000) malloc space
 0x0ff756e8 - 0x0ff7d6e7 (size 0x00008000) stack


In this case, the size - when doing the calculation "size =
PAGE_ALIGN_DOWN(end - start + 1);" - is zero.

The function call ret = alloc_memtest_region(list, start, size);
then fails.

I will not be able to offer a patch until second week of June as I am away.

Renaud.






_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
