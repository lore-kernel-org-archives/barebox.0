Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Upw3j-0003Ar-IX
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 07:47:04 +0000
Message-ID: <1371800801.2957.12.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Fri, 21 Jun 2013 09:46:41 +0200
In-Reply-To: <20130621071038.GA32299@pengutronix.de>
References: <1371675528-6380-1-git-send-email-s.hauer@pengutronix.de>
 <1371726931.3466.3.camel@lws-weitzel>
 <20130620152428.GU32299@pengutronix.de>
 <1371798211.2957.6.camel@lws-weitzel>
 <20130621071038.GA32299@pengutronix.de>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Freitag, den 21.06.2013, 09:10 +0200 schrieb Sascha Hauer:
> On Fri, Jun 21, 2013 at 09:03:31AM +0200, Jan Weitzel wrote:
> > Am Donnerstag, den 20.06.2013, 17:24 +0200 schrieb Sascha Hauer:
> > > 
> > > How do you want to do that? You would have to transfer the whole file
> > > first and see how big it is. That works for small files we expect to fit
> > > into memory like the ones read_file normally is called with. If you want
> > > to transfer a rootfs image it might happen that it's bigger than the
> > > available memory.
> > That's a good point. I didn't see a way for big files. But setting the
> > st_size to FILESIZE_MAX can cause trouble in other commands. ubiformat
> > only blames that is doesn't fit to eraseblock boundaries.
> 
> Have you tried it?
Yes, with a v2013.03.0 based barebox. Without the patch ubiformat -f
erase the ubi volume and "writes" a image of size 0.
The patched version stumbles over:

 if (st_size % mtd->eb_size) {
                sys_errmsg("file \"%s\" (size %lld bytes) is not
multiple of "
                           "eraseblock size (%d bytes)",

> 
> > ll -l shows a
> > really big size.
> 
> You'll never see this. Listing directories is not implemented in the
> tftp protocol.
> 
I got this with automount:
barebox@Phytec phyCORE pcm049:/  ls -l /mnt/tftp/weitzel/root.ubi
100Mbps full duplex link detected
T -rwxrwxrwx 4294967295 /mnt/tftp/weitzel/root.ubi

Without the patch it was 
-rwxrwxrwx          0 /mnt/tftp/weitzel/root.ubi

> > What do you think about handle it complete in read_file
> > if size == 0?
> 
> Maybe. What happens if the file is really 0 bytes big?
copy_file and unlinking will be the cost for this special case. We
should avoid a goto again loop ;)

Jan
> 
> Sascha
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
