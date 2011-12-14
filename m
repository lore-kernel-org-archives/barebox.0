Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rassg-00050v-4F
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 17:44:39 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 288B6FFBEE2
 for <barebox@lists.infradead.org>; Wed, 14 Dec 2011 18:44:59 +0100 (CET)
Date: Wed, 14 Dec 2011 18:40:11 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111214174011.GB9234@game.jcrosoft.org>
References: <1323877362-9738-1-git-send-email-plagnioj@jcrosoft.com>
 <20111214170659.GJ27267@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111214170659.GJ27267@pengutronix.de>
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
Subject: Re: [PATCH 1/1] defaultenv: use a compressed version when embedded
 in barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 18:06 Wed 14 Dec     , Sascha Hauer wrote:
> On Wed, Dec 14, 2011 at 04:42:42PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > with using gzip and the default env we can save 5.2KiB (5,352 bytes)
> > 
> > tested on sam9g20ek
> > before
> > -rwxr-xr-x  1 root root 260396 Dec 14 00:42 barebox.bin
> > after
> > -rwxr-xr-x  1 root root 265748 Dec 14 00:42 barebox.bin
> 
> Hm, your binary became 5353 bytes bigger not smaller...
> 
> We can safe a few bytes if we have zlib in our config anyway, but
> selecting it just to compress the defaultenv is a non starter because
> zlib is bigger than the uncompressed defaultenv.
> 
> How about a
> 
> config DEFAULT_ENVIRONMENT_COMPRESSED
> 	default y if ZLIB
> 
> instead?
sorry it's the invert we do use 5kIB less

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
