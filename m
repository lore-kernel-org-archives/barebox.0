Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22e.google.com ([2a00:1450:4013:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W68sn-0002OP-Q9
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 01:15:02 +0000
Received: by mail-ea0-f174.google.com with SMTP id b10so106979eae.5
 for <barebox@lists.infradead.org>; Wed, 22 Jan 2014 17:14:36 -0800 (PST)
From: Marek Vasut <marek.vasut@gmail.com>
Date: Thu, 23 Jan 2014 02:14:35 +0100
References: <1390431049-4236-1-git-send-email-philipp.zabel@gmail.com>
In-Reply-To: <1390431049-4236-1-git-send-email-philipp.zabel@gmail.com>
MIME-Version: 1.0
Message-Id: <201401230214.35328.marek.vasut@gmail.com>
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
Subject: Re: [PATCH 0/4] Asix AX88772B support
To: Philipp Zabel <philipp.zabel@gmail.com>
Cc: barebox@lists.infradead.org

On Wednesday, January 22, 2014 at 11:50:45 PM, Philipp Zabel wrote:
> This patch series picks up some changes from the linux kernel
> to make Asix AX88772B based USB Ethernet dongles work.
> 
> Marek Vasut (2):
>   net usb asix: Simplify condition in rx_fixup()
>   net usb asix: Use only 11 bits of header for data size
> 
> Philipp Zabel (2):
>   net usb asix: read MAC from EEPROM on AX88772B
>   net usb asix: add AX88772B USB ID
> 
>  drivers/net/usb/asix.c | 36 +++++++++++++++++++++++++++++++-----
>  1 file changed, 31 insertions(+), 5 deletions(-)

Oh wow, am I now an official barebox contributor ? :-D

Best regards,
Marek Vasut

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
