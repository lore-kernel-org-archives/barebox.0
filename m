Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clI4T-0007uV-G7
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 16:34:47 +0000
Date: Tue, 7 Mar 2017 17:34:16 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170307163416.GA26868@ravnborg.org>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 00/45] AT91, at91sam9x5ek updates
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

On Mon, Mar 06, 2017 at 02:53:11PM -0800, Andrey Smirnov wrote:
> Hi everyone,
> 
> I recently had a chance to work with at91sam9x5ek board and as a part
> of that effort I converted the code to support features found in
> Barebox for i.MX based SoCs. Most notably this patchset converts
> at91sam9x5ek to use multi-image PBL build process as well as adds
> support for board initialization from attached devicetree blob.

Impressive series - looks good! And timing was good.

I have a proprietary at91sam9263 based bord that is familiar
with the 9263 evaluation kit.
The current bootloader is latest bootstrap + an ancient U-Boot.
As we have another board (i.MX6 based) there is some synergy into
using the same bootloader on both boards.

Can you give any hints on what needs to be done on top of
your patch-set to support the 9263 evalutation kit?

When booting from an SD-Card/NOR-Flash/USB would I then need
to use at91bootstrap, or can I use only barebox?

If I move forward with this and I can find an 9263
evaluation kit I would then also update this.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
