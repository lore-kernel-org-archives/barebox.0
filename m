Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NyklB-0004lp-Ac
	for barebox@lists.infradead.org; Mon, 05 Apr 2010 11:46:29 +0000
From: "Gadiyar, Anand" <gadiyar@ti.com>
Date: Mon, 5 Apr 2010 17:16:22 +0530
Message-ID: <5A47E75E594F054BAF48C5E4FC4B92AB0322418528@dbde02.ent.ti.com>
References: <1270458446-25073-1-git-send-email-gadiyar@ti.com>
	<4BB9BFB2.9010807@gmail.com>
In-Reply-To: <4BB9BFB2.9010807@gmail.com>
Content-Language: en-US
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: [PATCH 2/3] omap3: 3430sdp: add choice of UARTs for console
To: Nishanth Menon <menon.nishanth@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Nishanth Menon wrote:
> On 04/05/2010 04:07 AM, Anand Gadiyar wrote:
> > The OMAP3 SDPs have both UART1 and UART3 available.
> > Historically, UART1 has been used for the console.
> >
> > Add a config option to select between these UARTs
> > (along the lines of what has been done for OMAP3 EVM)
> >

> I dont see a major reason for supporting UART1 other than historical 
> reasons, as UART3 seems capable of doing more than just debug terminal 
> alone (includes download aswell).. overall I dont see an issue, but 
> might be better to choose the terminal in a generic manner accross 
> platforms - as in, CONFIG_OMAP_SERIAL_UART1,2,3... for all platforms - 
> just my 2 cents.

Yup, sounds good. Let me see if I can make this generic.

- Anand

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
