Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8BvJ-0000Qu-1O
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 13:40:30 +0000
Date: Fri, 8 Apr 2011 15:32:30 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110408133230.GB13978@game.jcrosoft.org>
References: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
	<1302257948-18174-3-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1302257948-18174-3-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 2/7] defaultenv: boot: add backwards compatibility for
	kernel_loc=net
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, sha@pengutronix.de

On 12:19 Fri 08 Apr     , Marc Kleine-Budde wrote:
> Since commit 9eac282024c55fc13970189d6ace61f884917538, the boot script
> doesn't understand kernel_loc=net anymore. This patch adds backwards
> compatibility so that the kernel is loaded from tftp as before.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
please wait I'm switching boot to getopt and make more frendly

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
