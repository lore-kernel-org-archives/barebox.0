Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S643h-0008KC-FD
 for barebox@lists.infradead.org; Fri, 09 Mar 2012 17:56:54 +0000
Date: Fri, 9 Mar 2012 18:56:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120309175650.GJ3852@pengutronix.de>
References: <1331236232-32735-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331236232-32735-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC V2 0/6] barebox PCI support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Thu, Mar 08, 2012 at 11:50:26PM +0400, Antony Pavlov wrote:
> This patch series introduce PCI support to barebox.
> 
> Thanks to Jean-Christophe PLAGNIOL-VILLARD for reviewing and adding
> some PCI common code.
> 
> The patches are draft. They need a very big future work, so I put on them "RFC"
> title instead of "PATCH".

Overall this looks quite nice now. I think we are getting in the region
of 'merging in the near future'. There are some fixme markers aka C++
comments which should simply be removed like non present irq includes.
With others I don't understand if they have something to do with your
hardware or with porting PCI in general to barebox. I don't know much
about PCI, so only some comments inline where better barebox integration
is needed.

Thanks for working on this.

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
