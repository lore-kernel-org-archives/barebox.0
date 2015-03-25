Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo6.mail-out.ovh.net ([188.165.56.177])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YabUZ-0000tm-Tm
 for barebox@lists.infradead.org; Wed, 25 Mar 2015 02:56:28 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 89A81FF900D
 for <barebox@lists.infradead.org>; Wed, 25 Mar 2015 03:56:03 +0100 (CET)
Date: Wed, 25 Mar 2015 03:55:59 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150325025559.GC8125@ns203013.ovh.net>
References: <20150324130035.GB8125@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150324130035.GB8125@ns203013.ovh.net>
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
Subject: Re: [PATCH 0/7 v2] digest: allow multiple implementation of digest
To: barebox@lists.infradead.org

On 14:00 Tue 24 Mar     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	The following serie allow you to have multiple driver for
> 	the digest.
> 
> 	This also switch the sha1 implementation to the kernel one and
> 	add the armv4 asm implementtion that save nearly 6KiB in a zbarebox
> 	lzo.
> 
> 
> v2:
> 	switch sha256 and sha512 to linux implementation
> 	add arm sha256 asm implementation

Totaly we save 4896 bytes ~4.8KiB ad double the speed arround

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
