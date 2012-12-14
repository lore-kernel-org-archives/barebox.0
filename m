Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjeTM-00063A-74
 for barebox@lists.infradead.org; Fri, 14 Dec 2012 23:15:20 +0000
Date: Sat, 15 Dec 2012 00:15:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121214231514.GC26326@pengutronix.de>
References: <20121213163758.GB26483@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121213163758.GB26483@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/9] introduction of dmesg support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 13, 2012 at 05:37:58PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	we currently have 2 fifo at comsole level one for input one for output
> 	we fill the output fifo before any console is registered and then
> 	empty it
> 
> 	Now we introduce a new mecanism as in the kernel dmesg
> 
> 	we will always fill the output kfifo with drivers output
> 
> 	as in barebox we have 2 world
> 
> 	device/drivers and applicaiotn (commands)
> 
> 	so for now on drivers will have to use pr_xxx and dev_xxx and
> 	application will use printf
> 
> 	dmesg will print the kfifo at any time
> 
> 	we will extend this later with more control of what the drivers output
> 	on the console or just in the fifo
> 
> 	This new eature is optionnal if dmes is disable we continue as before
> 

Generally I like the idea. Overall I think it's nice to be able to
control the verbosity during runtime.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
