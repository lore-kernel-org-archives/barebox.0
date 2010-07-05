Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail2.gnudd.com ([213.203.150.91] helo=mail.gnudd.com)
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVnd3-0007W5-NS
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 15:30:42 +0000
Date: Mon, 5 Jul 2010 17:22:15 +0200
From: Alessandro Rubini <rubini-list@gnudd.com>
Message-ID: <20100705152215.GA16489@morgana.i.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1278335795-16289-3-git-send-email-s.hauer@pengutronix.de>
References: <1278335795-16289-3-git-send-email-s.hauer@pengutronix.de>
	<1278335795-16289-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 02/12] move drivers/nand to drivers/mtd/nand
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

> Subject: [PATCH 02/12] move drivers/nand to drivers/mtd/nand
> Date: Mon,  5 Jul 2010 15:16:25 +0200

>  drivers/mtd/nand/nand_base.c      | 2648 +++++++++++++++++++++++++++++++++++++
>  drivers/nand/nand_base.c          | 2648 -------------------------------------

Shouldn't this have been generated with "git format-patch -M" ?

/alessandro

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
