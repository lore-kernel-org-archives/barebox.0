Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkEvd-0000EG-4f
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 18:29:03 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 14 Sep 2016 18:27:04 +0000
Message-ID: <1473877833.4359.15.camel@rtred1test09.kymeta.local>
References: <1473841313-4204-1-git-send-email-s.hauer@pengutronix.de>
 <1473841313-4204-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1473841313-4204-2-git-send-email-s.hauer@pengutronix.de>
Content-Language: en-US
Content-ID: <85A7C66984BC684990C7BCCCE96F1ACD@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH 2/2] ARM: Fix calling of arm_mem_barebox_image()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, 2016-09-14 at 10:21 +0200, Sascha Hauer wrote:
> arm_mem_barebox_image() is used to pick a suitable place where to
> put the final image to. This is called from both the PBL uncompression
> code and also from the final image. To make it work properly it is
> crucial that it's called with the same arguments both times. Currently

This code has changed since I was working with it, but wouldn't
arm_mem_barebox_image() returning a different value from when the PBL
code calls it versus barebox_non_pbl_start() just result in an
unnecessary relocation of the uncompressed barebox from the PBL's choice
to the main barebox choice?


> it is called with the wrong image size from the PBL uncompression code.
> The size passed to arm_mem_barebox_image() has to be the size of the
> whole uncompressed image including the BSS segment size. The PBL code
> calls it with the compressed image size instead and without the BSS
> segment. This patch fixes this by reading the uncompressed image size
> from the compressed binary (the uncompressed size is appended to the
> end of the compressed binary by our compression wrappers). The size
> of the BSS segment is unknown though by the PBL uncompression code,
> so we introduce a maximum BSS size which is used instead.

Could the size including BSS be appended?  Seems like putting:
size -A barebox | awk '$1==".bss"{print $2}'
in the size_append function would do that pretty simply.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
