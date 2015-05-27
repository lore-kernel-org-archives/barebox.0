Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxV2W-00077n-OM
 for barebox@lists.infradead.org; Wed, 27 May 2015 06:42:09 +0000
Date: Wed, 27 May 2015 08:41:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150527064145.GO6325@pengutronix.de>
References: <556441EF.8040702@atsonline.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <556441EF.8040702@atsonline.de>
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
Subject: Re: bareboxenv - tricky ptxdist behavior
To: Alexander Richter <alexander.richter@atsonline.de>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Tue, May 26, 2015 at 11:50:39AM +0200, Alexander Richter wrote:
> Hallo,
> 
> I just used bareboxenv tool in linux userspace after a long
> troublesome trip through ptxdist.
> That would not have to be, if the description of "build bareboxenv
> tool for target" in barebox config has said, that i has to enable
> the tool  platformconfig.

Is there a "in" missing in the sentence above? There is a platformconfig
in ptxdist, but this is a file or a ptxdist subcommand, not a tool.
Could you clarify what your problem was? I do not really understand.

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
