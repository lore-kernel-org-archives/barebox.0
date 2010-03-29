Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NwCQB-0007rN-0o
	for barebox@lists.infradead.org; Mon, 29 Mar 2010 10:42:19 +0000
Received: by wwa36 with SMTP id 36so437266wwa.36
	for <barebox@lists.infradead.org>; Mon, 29 Mar 2010 03:42:12 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1269855383-22716-5-git-send-email-s.hauer@pengutronix.de>
References: <1269855383-22716-1-git-send-email-s.hauer@pengutronix.de>
	<1269855383-22716-5-git-send-email-s.hauer@pengutronix.de>
Date: Mon, 29 Mar 2010 12:42:12 +0200
Message-ID: <ba216b431003290342h5f10af7k59265586c2bcfa92@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
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
Subject: Re: [PATCH 04/12] imx_nand: use memcpy for copying from/to buffer
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sasca,

On Mon, Mar 29, 2010 at 11:36 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> We do not need to use memcpy32 in read_buf/write_buf because
> in these functions we only access SDRAM and not the internal SRAM
> buffer.

Will this not break NAND_IMX_BOOT, as memcpy is not guaranteed to fit
in the initial X KiB of the resultant barebox image ?

Best regards,

Ivo.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
