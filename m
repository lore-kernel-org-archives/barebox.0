Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28Ss-0000Ak-4f
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:22:23 +0000
Received: by mail-pl1-x641.google.com with SMTP id t19-v6so382025ply.13
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:22:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:21:15 -0700
Message-Id: <20180918052122.12248-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/7] non-coherent Rx buffers in FEC and some small fixes
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series was created while working on converting FEC driver to use
non-coherent memory for Rx buffers as a part of addressing feedback
for [1]. Patch 7/7 implements said change while the rest of the
patches are just small improvements (IMHO, of course) that I made
while looking at FEC's source code.

Tested by using TFTP on following boards:

  - NXP i.MX8MQ EVK
  - ZII i.MX6Q RDU2
  - ZII VF610 CFU1

Feedback is welcome!

Thanks,
Andrey Smirnov

[1] http://lists.infradead.org/pipermail/barebox/2018-August/034216.html

Andrey Smirnov (7):
  net: fec_imx: Drop extra indentation level by exiting early
  net: fec_imx: Don't check bd_status & FEC_RBD_ERR twice
  net: fec_imx: Read data_length only once
  net: fec_imx: Drop struct fec_frame
  net: fec_imx: Drop frame_length
  net: fec_imx: Make use of readx_poll_timeout() macros
  net: fec_imx: Do not use DMA coherent memory for Rx buffers

 drivers/net/fec_imx.c | 141 +++++++++++++++++++++---------------------
 1 file changed, 69 insertions(+), 72 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
