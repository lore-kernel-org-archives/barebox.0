Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.77.mail-out.ovh.net ([87.98.180.67] helo=77.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pcbdo-0003zr-MR
	for barebox@lists.infradead.org; Tue, 11 Jan 2011 10:39:57 +0000
Message-ID: <4D2C336C.8070006@eukrea.com>
Date: Tue, 11 Jan 2011 11:39:40 +0100
From: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
MIME-Version: 1.0
References: <1294702816-21612-1-git-send-email-marc@cpdesign.com.au>	<1294702816-21612-4-git-send-email-marc@cpdesign.com.au>	<20110111094151.GO12078@pengutronix.de>
	<201101112134.35813.marc@cpdesign.com.au>
In-Reply-To: <201101112134.35813.marc@cpdesign.com.au>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 3/3] imx(25, 35): save boot location into $boot_loc env.
To: barebox@lists.infradead.org

Hi Marc,

On 11/01/2011 11:34, Marc Reilly wrote:
> nor onenand nand mmc prom_i2c prom_spi -- do these names sound ok for
> everyone?
>
I think "i2c" & "spi" are enough, no need of "prom_" prefix.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
