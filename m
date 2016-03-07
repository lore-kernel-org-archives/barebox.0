Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0b-00176a03.pphosted.com ([67.231.157.48])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1acyA6-0004LV-Hk
 for barebox@lists.infradead.org; Mon, 07 Mar 2016 16:37:39 +0000
Received: from pps.filterd (m0048205.ppops.net [127.0.0.1])
 by m0048205.ppops.net-00176a03. (8.15.0.59/8.15.0.59) with SMTP id
 u27GbGZU007328
 for <barebox@lists.infradead.org>; Mon, 7 Mar 2016 11:37:16 -0500
Received: from cinmlip13.e2k.ad.ge.com (n165-156-000-000.static.ge.com
 [165.156.4.1] (may be forged))
 by m0048205.ppops.net-00176a03. with ESMTP id 21hcfx01f8-1
 (version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=NOT)
 for <barebox@lists.infradead.org>; Mon, 07 Mar 2016 11:37:16 -0500
Received: from [3.26.68.149] (unknown [3.26.68.149])
 by selma.edi.geip.ge.com (Postfix) with ESMTP id 3E3ACE1C86
 for <barebox@lists.infradead.org>; Mon,  7 Mar 2016 16:37:14 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ge.com>
Message-ID: <56DDAE3A.3030808@ge.com>
Date: Mon, 7 Mar 2016 16:37:14 +0000
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
Subject: arm: Question on linker script and start/end variables
To: barebox@lists.infradead.org

I have a ARM-based board for which we have a running barebox.

In the low level code, when running from flash, I would like to get the
start and end address of a section. For instance, &__barebox_cmd_start
and &__barebox_cmd_end.

For both I am getting 0 unless I am running from memory.

Even assigning these addresses to variables always returns 0.

This is not an issue on PPC platforms.

All my tests and research to get the correct address on ARM has led to
no positive results.

Has anybody an explanation why these addresses cannot be obtained on ARM
platforms?

Cheers,
Renaud






_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
