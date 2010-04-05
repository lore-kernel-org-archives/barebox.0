Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gw0-f49.google.com ([74.125.83.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Nyjqt-0000Ix-1A
	for barebox@lists.infradead.org; Mon, 05 Apr 2010 10:48:19 +0000
Received: by gwj16 with SMTP id 16so2588791gwj.36
	for <barebox@lists.infradead.org>; Mon, 05 Apr 2010 03:48:18 -0700 (PDT)
Message-ID: <4BB9BFED.4070201@gmail.com>
Date: Mon, 05 Apr 2010 05:48:13 -0500
From: Nishanth Menon <menon.nishanth@gmail.com>
MIME-Version: 1.0
References: <1270458446-25073-1-git-send-email-gadiyar@ti.com>	<1270458446-25073-2-git-send-email-gadiyar@ti.com>
	<1270458446-25073-3-git-send-email-gadiyar@ti.com>
In-Reply-To: <1270458446-25073-3-git-send-email-gadiyar@ti.com>
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
Subject: Re: [PATCH 3/3] omap3: 3430sdp: Update defconfig
To: Anand Gadiyar <gadiyar@ti.com>
Cc: barebox@lists.infradead.org

On 04/05/2010 04:07 AM, Anand Gadiyar wrote:
> Update the defconfig to enable some useful options
> - Use UART1 by default
> - Change the prompt to barebox:
> - Enable help
> - Enable some useful commands (not all, as they are not yet tested)
>
> Signed-off-by: Anand Gadiyar<gadiyar@ti.com>
> ---
> This is a safe config, tested and working on the SDP.
> Need to play some more before enabling other options.
> So we'll do that later.
>
>   arch/arm/configs/omap_3430sdp_defconfig |   82 +++++++++++++++++---------------
>   1 files changed, 44 insertions(+), 38 deletions(-)
>
please see previous comment - i think this is mostly a good thing to do, 
but as a seperate defconfig without loosing the old per_download 
defconfigs..

Regards,
Nishanth Menon

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
