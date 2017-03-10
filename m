Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo179.mail-out.ovh.net ([46.105.75.26])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cmLCW-0004Sb-HO
 for barebox@lists.infradead.org; Fri, 10 Mar 2017 14:07:28 +0000
Received: from player716.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id C3C312BD55
 for <barebox@lists.infradead.org>; Fri, 10 Mar 2017 15:07:01 +0100 (CET)
Date: Fri, 10 Mar 2017 15:13:18 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170310141318.GC19458@mail.ovh.net>
References: <20170309143117.GI4120@mail.ovh.net>
 <1489070050-16024-1-git-send-email-plagnioj@jcrosoft.com>
 <1489070050-16024-2-git-send-email-plagnioj@jcrosoft.com>
 <1489080293.24921.0.camel@pengutronix.de>
 <DA9CFBDA-E7D8-48B7-9CAC-73FDD1A51148@jcrosoft.com>
 <1489143938.24921.17.camel@pengutronix.de>
 <20170310135403.GA19458@mail.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170310135403.GA19458@mail.ovh.net>
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
Subject: Re: [PATCH 2/5] efi: fix lds for secure boot support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:54 Fri 10 Mar     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 12:05 Fri 10 Mar     , Lucas Stach wrote:
> > Am Freitag, den 10.03.2017, 18:17 +0800 schrieb Jean-Christophe
> > PLAGNIOL-VILLARD:
> > > > On Mar 10, 2017, at 1:24 AM, Lucas Stach <l.stach@pengutronix.de> wrote:
> > > > 
> > > > Am Donnerstag, den 09.03.2017, 15:34 +0100 schrieb Jean-Christophe
> > > > PLAGNIOL-VILLARD:
> > > >> everythink need to be aligned to 4096
> > > > 
> > > > Why? The commit message isn't really telling anything.
> > > This is a requierment by EFI
> > 
> > This is in no way an EFI requirement.
> > 
> > Googling tells me that the signing procedure for EFI secure boot is
> > built around a PE binary. PE in turn is based on the COFF binary format
> > which, unlike ELF, has no section descriptions in the header and
> > therefore requires the sections to be placed page aligned (4K on x86, 4K
> > or 64K on ARM64).
> No COFF does not require to have section "page aligned" which is wrong here

This is the job of the loader to aligned them in memory but on EFI it's
required to sign the binary.

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
