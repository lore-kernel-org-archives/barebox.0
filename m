Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtazW-0001Vx-JA
 for barebox@lists.infradead.org; Tue, 12 Feb 2019 16:33:04 +0000
Date: Tue, 12 Feb 2019 17:32:51 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190212163251.GA15023@ravnborg.org>
References: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
 <1549898200-32688-2-git-send-email-t.remmet@phytec.de>
 <20190211154138.GA5683@ravnborg.org>
 <20190212080906.5bgldri5gjpjptys@pengutronix.de>
 <33609c0d6dc1627d573a659c9957c175b0d0fcf2.camel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33609c0d6dc1627d573a659c9957c175b0d0fcf2.camel@phytec.de>
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
Subject: Re: [PATCH 1/7] drivers: bus: Add ti-sysc bus driver
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa.

> If there is any need for a such a generic driver right now. I will
> rename it.

I see no need for one for now.
So follow Sasha's recommendation and keep it TI specific
is the best choice.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
