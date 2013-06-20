Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpZz8-0006Wn-GO
 for barebox@lists.infradead.org; Thu, 20 Jun 2013 08:12:51 +0000
Date: Thu, 20 Jun 2013 10:12:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130620081228.GP32299@pengutronix.de>
References: <1371675528-6380-1-git-send-email-s.hauer@pengutronix.de>
 <20130619213239.GA3707@x61s.8.8.8.8>
 <20130619215700.GA2135@x61s.8.8.8.8>
 <20130620064217.GN32299@pengutronix.de>
 <20130620072843.GA2086@x61s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130620072843.GA2086@x61s>
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
Subject: Re: [PATCH] read_file: Make it work on tftp servers which do not
 pass size
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 20, 2013 at 09:28:44AM +0200, Alexander Aring wrote:
> Hi Sascha,
> 
> > 
> > No no, you were right. This indeed has to be a loff_t. Where did you
> > find that the fs layer uses size_t? It should do so only for the length
> > arguments of read/write and friends.
> > 
> 
> In function read_file :). The parameter size should be changed to
> loff_t instead of size_t, because we make "*size = s.st_size;".
> 
> 
> 
> The point is, that a file can be greater than 4GB, but we _can't_
> read/write a "block" from a file that is greather than 4GB.
> 
> But in this function we do "read(fd, buf, s.st_size) < s.st_size", this
> need to be in small (max) 4GB pieces(if necessary). In other words, we
> can't use s.st_size here if the file is greater than ((size_t)-1).
> 
> I don't think if we need something like this, because we never handle
> files which are greater than 4GB.
> 
> That's my point of view. This example is only for a 32Bit architecture.

Ok, so read_file is broken for files > 4GiB. I think we can live with
this for a while ;)

BTW the maximum memory size the tlsf allocator can handle is 1GiB, we
have to overcome this first.

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
