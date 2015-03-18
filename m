Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YY8f9-0003Lp-AX
 for barebox@lists.infradead.org; Wed, 18 Mar 2015 07:45:12 +0000
Date: Wed, 18 Mar 2015 08:44:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150318074448.GI4927@pengutronix.de>
References: <20150317114923.GQ26127@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150317114923.GQ26127@ns203013.ovh.net>
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
Subject: Re: [PATCH 0/9 v4] prepare for rsa support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 17, 2015 at 12:49:23PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	The following patch series prepare for the adding of the rsa digest
> 	support
> 
> 	This will allow to verify a rsa signature of a file
> 
> 	Introduction of a new command digest to handle the digest and check
> 
> 	The next patch series will add RSA and keystore support
> 
> v2:
> 
> 	- rebase on next
> 	- add pbkdf2 to password/login framework
> 	- command allow to have runtime output
> 	  used it in the new digest to print the supported algo
> 
> v3:
> 	add more fix to ensure all the digest_xx call return are checked
> 
> v4:
> 	- drop key params for digest_file_window/digest_file/digest_file_by_name
> 	- digest improve help
> 
> please pull
> The following changes since commit bbba2d05585637d04657dce293c0cb0611dbfeea:
> 
>   Merge branch 'for-next/state' into next (2015-03-13 08:32:38 +0100)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/digest
> 
> for you to fetch changes up to 50b6b7d02eb109ba2807c2bb6e740fa01cdedc24:
> 
>   command: add generic digest command (2015-03-15 06:28:34 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (9):
>       crypto: digest: digest_file_window: check every digest_xxx return
>       crypto: digest: digest_file_window/digest_file/digest_file_by_name drop key params
>       digest: add verify callback
>       digest: add digest callback
>       crypto: hmac: use digest_digest and check the return of every digest_xxx
>       crypto: add pbkdf2 hmac key generator
>       command: allow runtime usage
>       command: rename digest.c to hashsum.c
>       command: add generic digest command

Applied, thanks

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
