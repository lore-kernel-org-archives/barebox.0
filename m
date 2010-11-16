Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.telit.com ([88.37.127.140])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PIIkk-0002zb-Pg
	for barebox@lists.infradead.org; Tue, 16 Nov 2010 10:27:08 +0000
From: Fabio Porcedda <Fabio.Porcedda@telit.com>
Date: Tue, 16 Nov 2010 11:26:46 +0100
Message-ID: <24A9345B397CD24AA76A4E82E237956544B95BA91D@XCHTS.tmt.telital.com>
References: <24A9345B397CD24AA76A4E82E237956544B9560AE5@XCHTS.tmt.telital.com>
	<20101107114842.GB6017@pengutronix.de>
In-Reply-To: <20101107114842.GB6017@pengutronix.de>
Content-Language: en-US
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: AT91SAM9260-EK NAND Driver error
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Nov 07, 2010 at 12.49, Sascha Hauer
> ... So either erase your nand and
> write it again with babebox (in which case U-Boot won't be able to
> access the nand) or switch barebox to software ecc (look for ecc_mode in
> your board file).

Erasing the nand solved the problem. Thank you.

Best regards
Fabio Porcedda


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
