Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wpx4J-0001QP-MI
 for barebox@lists.infradead.org; Thu, 29 May 2014 09:56:16 +0000
Received: by mail-wi0-f174.google.com with SMTP id r20so5289801wiv.1
 for <barebox@lists.infradead.org>; Thu, 29 May 2014 02:55:52 -0700 (PDT)
Received: from quadrivium.sadel.local ([46.252.151.29])
 by mx.google.com with ESMTPSA id br5sm474840wjc.9.2014.05.29.02.55.50
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 29 May 2014 02:55:50 -0700 (PDT)
From: Matteo Fortini <matteo.fortini@gmail.com>
Date: Thu, 29 May 2014 11:53:34 +0200
Message-Id: <1401357215-6257-1-git-send-email-matteo.fortini@gmail.com>
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
Subject: [PATCH][RESEND] sama5d3x: fix AT91_SMC_CS offset stride
To: barebox@lists.infradead.org

As stated in section 29.19.32 of SAMA5D3 Series datasheet, to move
from CS(n) to CS(n+1) the stride is 0x14 and not 0x10.

For this reason, I was unable to use the NAND memory on my board (CS
configuration was not applied and the timings were wrong).

This patch fixes the problem.

Matteo 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
