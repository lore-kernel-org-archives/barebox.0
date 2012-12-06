Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgZB4-0001pv-Q3
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 10:59:39 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 6 Dec 2012 11:56:58 +0100
References: <10036346.7roAWQEoPH@yiqingliang-pc>
 <201212060909.10852.jbe@pengutronix.de> <8798196.eT9tp0tzHY@yiqingliang-pc>
In-Reply-To: <8798196.eT9tp0tzHY@yiqingliang-pc>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201212061156.58566.jbe@pengutronix.de>
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
Subject: Re: about the dm9000 in mini2440
To: barebox@lists.infradead.org

Yi Qingliang wrote:
> indeed, I encountered follow error when boot barebox (compiled with default
> cfg):
> dm9000@dm90000: Wrong databus width defined at compile time
>
> and can't use it for tftp
>
> I have printed out the context, found that is 32bit in the dm9000 register
> (read only), but in mini2440 initialize code is 16bit.
>
> any suggestion?

This would mean the EED0 pin of the DM9000 has a pull up connected, which is 
not the case for the Mini2440. Are you sure, you are using an original 
Mini2440?

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Peiner Str. 6-8, 31137 Hildesheim, Germany    | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
