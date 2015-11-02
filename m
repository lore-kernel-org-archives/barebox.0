Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22b.google.com ([2a00:1450:4010:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtHy9-00057A-IK
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 16:28:30 +0000
Received: by lfbn126 with SMTP id n126so63840151lfb.2
 for <barebox@lists.infradead.org>; Mon, 02 Nov 2015 08:28:07 -0800 (PST)
Received: from berta.oavm ([194.67.106.109])
 by smtp.gmail.com with ESMTPSA id i3sm4047784lbj.0.2015.11.02.08.28.05
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 02 Nov 2015 08:28:05 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon,  2 Nov 2015 19:30:28 +0300
Message-Id: <1446481830-25052-1-git-send-email-pmamonov@gmail.com>
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
Subject: mips: detect and report secondary cache configuration
To: barebox@lists.infradead.org

These two patches implement secondary cache detection and report its 
configuration via cpuinfo command.

Peter Mamonov (2):
	[PATCH 1/2] mips: c-r4k: detect secondary cache
	[PATCH 2/2] mips: cpuinfo: report secondary cache configuration

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
