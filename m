Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TDAoe-0006di-RR
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 09:07:01 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 85FFEFF999D
 for <barebox@lists.infradead.org>; Sun, 16 Sep 2012 11:12:41 +0200 (CEST)
Date: Sun, 16 Sep 2012 11:04:25 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120916090425.GH25990@game.jcrosoft.org>
References: <1347717626-19970-1-git-send-email-plagnioj@jcrosoft.com>
 <20120916082836.GE6180@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120916082836.GE6180@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] defconfig: substitute '-' to '_' in defconfig name
 so MAKEALL can work
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:28 Sun 16 Sep     , Sascha Hauer wrote:
> You should rather fix the MAKEALL script.
can not

the scripts take a config file like this

The cross-compiler can be specify via
CROSS_COMPILE               default
CROSS_COMPILE_<arch>        arch default
CROSS_COMPILE_<target>      deconfig specifc

so bash does not accept var xx-xx only xx_xx

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
