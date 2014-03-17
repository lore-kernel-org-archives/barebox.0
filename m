Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x234.google.com ([2a00:1450:4013:c00::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPS20-0001oZ-QP
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 07:32:21 +0000
Received: by mail-ee0-f52.google.com with SMTP id e49so3672264eek.25
 for <barebox@lists.infradead.org>; Mon, 17 Mar 2014 00:31:58 -0700 (PDT)
Date: Mon, 17 Mar 2014 08:31:53 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140317073150.GA21767@omega>
References: <53211233.5070806@kosagi.com>
 <20140313073817.GR17250@pengutronix.de>
 <53218604.6080702@kosagi.com>
 <20140313202719.GS17250@pengutronix.de>
 <532278F0.1040409@kosagi.com>
 <20140314082252.GW17250@pengutronix.de>
 <532679EC.4020806@kosagi.com>
 <20140317071857.GH17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140317071857.GH17250@pengutronix.de>
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
Subject: Re: Porting barebox to Novena: misc questions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Mar 17, 2014 at 08:18:58AM +0100, Sascha Hauer wrote:
> On Mon, Mar 17, 2014 at 12:28:28PM +0800, Sean Cross wrote:
> > Here is the resulting output and BUG from this run:
> > 
> > barebox 2014.03.0-00628-g7fed07d-dirty #158 Mon Mar 17 12:25:45 SGT 2014
> > 
> > 
> > Board: Kosagi i.MX6DL Novena Board
> > detected i.MX6 DualLite revision 1.1
> > Trying to request region ttb (from 0x4fff4000:0x4fff7fff): ok
> > Trying to request region malloc space (from 0x4be00000:0x4fdfffff): ok
> > Trying to request region barebox (from 0x4fe00000:0x4fe4b4a7): ok
> > Trying to request region barebox data (from 0x4fe4b4a8:0x4fe5c8f7): ok
> > Trying to request region bss (from 0x4fe5c8f8:0x4fe6214f): ok
> > Trying to request region stack (from 0x4fff8000:0x4fffffff): ok
> > mmu: find_pte: TTB for address 0x4cd1e000 is not of type table
> > mmu: Memory banks:
> > mmu: #0 0x10000000 - 0xffffffff
> 
> So you have one memory bank that starts at 0x10000000 which is the
> standard SDRAM base for i.MX6. Good. But why is the size 0? Have you
> specified this in your devicetree? It should contain the correct size.
> It could also be that we do not parse #ddress-cells / #size-cells
> correctly (in case one of these is not 1 in your devicetree).
> 

does this smells like an error case which we should handle with a slightly
eprintf? :-)

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
