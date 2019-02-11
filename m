Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gtDiK-000670-3s
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 15:41:45 +0000
Date: Mon, 11 Feb 2019 16:41:38 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190211154138.GA5683@ravnborg.org>
References: <1549898200-32688-1-git-send-email-t.remmet@phytec.de>
 <1549898200-32688-2-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1549898200-32688-2-git-send-email-t.remmet@phytec.de>
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

On Mon, Feb 11, 2019 at 04:16:34PM +0100, Teresa Remmet wrote:
> Adds minimal support for the sysc interconnect target module found
> on many TI SoCs. With this device tree includes have been rearagned.
s/rearagned/rearranged"

> We need the driver to probe the child devices of the bus.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>

The implementation is simple, which is always a good thing.
There is so far nothing TI specific in the implementation except
for the of_device_id entries.
Would it be an idea to rename this to a simple-bus driver.
And then we can add relevant ID's as other may need the same functionality.
?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
