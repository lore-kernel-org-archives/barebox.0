Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YAxXO-0007GF-83
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 09:13:22 +0000
Message-ID: <1421140377.2939.26.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Tue, 13 Jan 2015 10:12:57 +0100
In-Reply-To: <80FED513-D72C-4527-A51C-687BF4A89D35@jcrosoft.com>
References: <20150113061940.GA30554@ns203013.ovh.net>
 <1421130070-31704-1-git-send-email-plagnioj@jcrosoft.com>
 <1421130070-31704-2-git-send-email-plagnioj@jcrosoft.com>
 <20150113082546.GC23940@pengutronix.de>
 <80FED513-D72C-4527-A51C-687BF4A89D35@jcrosoft.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] defaultenv-2: introduce /env/rc.d
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On Tue, 2015-01-13 at 16:29 +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> and this will allow also to have the same script at different order
> based on the board requirement.

So without links you should be able to use 'mv' instead of 'ln'.

If this doesn't work for your case, could you describe it in a bit more
detail?

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
