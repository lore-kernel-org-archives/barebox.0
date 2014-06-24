Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from alcapone.vm.bytemark.co.uk ([89.16.173.107])
 by casper.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzOtC-0005Uu-76
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 11:27:50 +0000
From: Matteo Fortini <matteo.fortini@gmail.com>
Date: Tue, 24 Jun 2014 13:26:30 +0200
Message-Id: <assp.0252ff18ed.1403609192-5862-1-git-send-email-matteo.fortini@gmail.com>
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
Subject: [PATCH V2] SAMA5D3 SMC: Fix CS offset and add TIMINGS register
To: barebox@lists.infradead.org

As stated in section 29.19.35 of SAMA5D3 Series Datasheet,
MODE register has offset 0x10 while at offset 0x0C there is
a TIMINGS register.
This patch series adds the register and configures it for 
sama5d3xek using timings from U-Boot

[PATCH 1/2] sama5d3x: fix HSMC MODE register offset and add TIMINGS
[PATCH 2/2] sama5d3x: HSMC NAND initialize TIMINGS and import values

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
