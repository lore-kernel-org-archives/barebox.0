Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYHkD-0003VI-C9
 for barebox@lists.infradead.org; Tue, 13 Nov 2012 14:45:45 +0000
Date: Tue, 13 Nov 2012 15:45:23 +0100
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20121113154523.75dbe972@skate>
In-Reply-To: <1352230416-9396-2-git-send-email-plagnioj@jcrosoft.com>
References: <20121106193010.GE25679@game.jcrosoft.org>
 <1352230416-9396-1-git-send-email-plagnioj@jcrosoft.com>
 <1352230416-9396-2-git-send-email-plagnioj@jcrosoft.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 2/8] atmel_spi: split transfert to atmel_spi_do_xfer
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hello,

Just some stupid nitpicks:

atmel_spi: split transfert to atmel_spi_do_xfer

should probably be:

atmel_spi: move transfer code into a separate atmel_spi_do_xfer function

On Tue,  6 Nov 2012 20:33:30 +0100, Jean-Christophe PLAGNIOL-VILLARD
wrote:
> This make the code mre readable

       makes         more

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
