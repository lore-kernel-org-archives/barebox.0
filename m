Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGA3e-0002J2-2x
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:22:20 +0000
Received: by mail-pf0-x241.google.com with SMTP id a22so10454230pfn.6
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:21:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:21:23 -0700
Message-Id: <20180508212125.5923-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] Pass reset and boot sources via /chosen node
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

The following two patches are really usefull for Linux userspace
applications that need to know the details about reset and boot
sources.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (2):
  common: oftree: Pass bootsource and bootsource instance to kernel
  common: oftree: Pass reset source and reset source instance to kernel

 common/oftree.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
