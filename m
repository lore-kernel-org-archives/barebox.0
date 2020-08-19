Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8IMw-000769-4X
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 07:18:47 +0000
References: <20200818131816.7700-1-a.fatoum@pengutronix.de>
 <20200819065951.GQ13023@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1596f917-83af-a467-e1ee-02c83a309b7d@pengutronix.de>
Date: Wed, 19 Aug 2020 09:18:44 +0200
MIME-Version: 1.0
In-Reply-To: <20200819065951.GQ13023@pengutronix.de>
Content-Language: en-US
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] watchdog: fix watchdog_set_timeout breakage for drivers
 like imxwd
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>

On 8/19/20 8:59 AM, Sascha Hauer wrote:
> Hi Ahmad,
> 
> On Tue, Aug 18, 2020 at 03:18:16PM +0200, Ahmad Fatoum wrote:
>> Commit 0b944fce55f4 ("watchdog: permit `wd 0` for non-stoppable, but
>> inactive, watchdogs") silently broke use of non-stoppable, but inactive,
>> watchdogs altogether.
> 
> Didn't this commit break *all* watchdogs? With 0b944fce55f4 an inactive
> watchdog will never be activated anymore.

watchdog_hw_running() returns -ENOSYS for watchdog that don't report whether
they are running, so it broke all those who do report it and are inactive at
driver probe time. 

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
