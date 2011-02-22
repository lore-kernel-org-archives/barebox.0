Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Ps29A-0004fJ-Qs
	for barebox@lists.infradead.org; Wed, 23 Feb 2011 00:00:01 +0000
Message-ID: <4D644DFA.9070706@eukrea.com>
Date: Wed, 23 Feb 2011 00:59:54 +0100
From: Eric Benard <eric@eukrea.com>
MIME-Version: 1.0
References: <1296209604-29790-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1296209604-29790-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] lib/decompress_unlzo: use fill and full to read and write
	data
To: barebox@lists.infradead.org

Hi Jean Christophe,

On 28/01/2011 11:13, Jean-Christophe PLAGNIOL-VILLARD wrote:
> this will all to simplify the sync with the kernel and later easly add the
> self decompression support to barebox
>
> as example with a lzo compression will reduce barebox from 180224 to 99863
> bytes so 55.41%
> -rwxr-xr-x 1 root root  99863 Jan 28 02:17 build/versatilepb/barebox.bin.lzo
>
> we also reduce the binary size by 224 bytes
>
> Old version
> # ls -al build/versatilepb/barebox.bin
> -rwxr-xr-x 1 root root 180468 Jan 28 02:14 build/versatilepb/barebox.bin
>
> New version
> # ls -al build/versatilepb/barebox*
> -rwxr-xr-x 1 root root 180244 Jan 28 02:13 build/versatilepb/barebox.bin
>
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD<plagnioj@jcrosoft.com>

unfortunatly, this commit breaks unlzo in barebox :
unlzo logo.bmp.lzo logo.bmp stays blocked forever
reverting this commit unbreak the unlzo command.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
