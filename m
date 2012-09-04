Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8nl3-00044P-3o
 for barebox@lists.infradead.org; Tue, 04 Sep 2012 07:41:13 +0000
Message-ID: <1346744470.4672.5.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Tue, 04 Sep 2012 09:41:10 +0200
In-Reply-To: <20120903162443.GF19931@game.jcrosoft.org>
References: <1346672765-16162-1-git-send-email-jlu@pengutronix.de>
 <1346672765-16162-7-git-send-email-jlu@pengutronix.de>
 <20120903162443.GF19931@game.jcrosoft.org>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: Re: [PATCH 06/10] omap: add SPI as a boot mode for xload
To: barebox@lists.infradead.org

Am Montag, den 03.09.2012, 18:24 +0200 schrieb Jean-Christophe
PLAGNIOL-VILLARD:
> On 13:46 Mon 03 Sep     , Jan Luebbe wrote:
> > Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> you need to sync with 
> 
> 257     Aug27 Jan Weitzel     [RFC] xload: get barebox size from barebox_arm_head

read_image_head reads the size from partition. Could you try it?.
[PATCH v3] xload: get barebox size from barebox_arm_head

Jan



> Best Regards,
> J.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
