Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PsIDS-0003M7-Qj
	for barebox@lists.infradead.org; Wed, 23 Feb 2011 17:09:31 +0000
Date: Wed, 23 Feb 2011 18:05:12 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110223170512.GB29927@game.jcrosoft.org>
References: <1296209604-29790-1-git-send-email-plagnioj@jcrosoft.com>
	<4D644DFA.9070706@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D644DFA.9070706@eukrea.com>
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
Subject: Re: [PATCH] lib/decompress_unlzo: use fill and full to read and
	write data
To: Eric Benard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 00:59 Wed 23 Feb     , Eric Benard wrote:
> Hi Jean Christophe,
> 
> On 28/01/2011 11:13, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >this will all to simplify the sync with the kernel and later easly add the
> >self decompression support to barebox
> >
> >as example with a lzo compression will reduce barebox from 180224 to 99863
> >bytes so 55.41%
> >-rwxr-xr-x 1 root root  99863 Jan 28 02:17 build/versatilepb/barebox.bin.lzo
> >
> >we also reduce the binary size by 224 bytes
> >
> >Old version
> ># ls -al build/versatilepb/barebox.bin
> >-rwxr-xr-x 1 root root 180468 Jan 28 02:14 build/versatilepb/barebox.bin
> >
> >New version
> ># ls -al build/versatilepb/barebox*
> >-rwxr-xr-x 1 root root 180244 Jan 28 02:13 build/versatilepb/barebox.bin
> >
> >Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD<plagnioj@jcrosoft.com>
> 
> unfortunatly, this commit breaks unlzo in barebox :
> unlzo logo.bmp.lzo logo.bmp stays blocked forever
> reverting this commit unbreak the unlzo command.
I try it here on the versatile and it's work fine

I will it again on the sam9261ek and other at91

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
