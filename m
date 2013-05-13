Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbkrK-0003Yl-JG
 for barebox@lists.infradead.org; Mon, 13 May 2013 04:59:39 +0000
Date: Mon, 13 May 2013 06:59:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130513045912.GB32299@pengutronix.de>
References: <emde4cb769-926c-4395-89e6-073d8c931261@plh001-think>
 <emf29bd203-0329-4bf9-8b13-7176a8062a4f@plh001-think>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <emf29bd203-0329-4bf9-8b13-7176a8062a4f@plh001-think>
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
Subject: Re: Error when starting kernel with devicetree on tx53
To: "Dr. Patrick Langfeld" <patrick.langfeld@optimeas.de>
Cc: barebox@lists.infradead.org

On Sun, May 12, 2013 at 06:12:11PM +0000, Dr. Patrick Langfeld wrote:
> 
> Loading OS U-Boot uImage '/mnt/tftp/uImage'
> OS image is at 0x70008000-0x70233917
> Loading devicetree from '/mnt/tftp/tx53.dtb'
> /mnt/tftp/tx53.dtb is not an oftree but unknown
> bad magic: 0x0000f085

Your problem is that this not a devicetree blob.
Of course barebox should not crash then, this seems to be a bug.

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
