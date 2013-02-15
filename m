Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a02:8b8:656::164] (helo=bar.sig21.net)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6Fxg-0000gZ-Dt
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 07:44:01 +0000
Date: Fri, 15 Feb 2013 08:43:32 +0100
From: Johannes Stezenbach <js@sig21.net>
Message-ID: <20130215074332.GA18670@sig21.net>
References: <20130214154759.GT19322@game.jcrosoft.org>
 <1360857147-489-1-git-send-email-plagnioj@jcrosoft.com>
 <1360857147-489-2-git-send-email-plagnioj@jcrosoft.com>
 <20130214163618.GV1906@pengutronix.de>
 <20130214165323.GU19322@game.jcrosoft.org>
 <20130214170507.GA8097@sig21.net>
 <20130214191702.GZ1906@pengutronix.de>
 <20130214220855.GW19322@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130214220855.GW19322@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/5] filetype: add GPT support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Rob Herring <rob.herring@calxeda.com>

On Thu, Feb 14, 2013 at 11:08:55PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 20:17 Thu 14 Feb     , Sascha Hauer wrote:
> > On Thu, Feb 14, 2013 at 06:05:07PM +0100, Johannes Stezenbach wrote:
> > > On Thu, Feb 14, 2013 at 05:53:23PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > On 17:36 Thu 14 Feb     , Sascha Hauer wrote:
> > > > > On Thu, Feb 14, 2013 at 04:52:24PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > > GPT need to be check before MBR
...
> > > > > > +	if (bufsize >= 520 && strncmp(&buf8[512], "EFI PART", 8) == 0)
> > > > > > +		return filetype_gpt;
> > > > > > +
> > > > > 
> > > > > The list is sorted by size, so please move this below:
> > > > on purpose
> > > > 
> > > > EFI need to be detect before mbr
> > > 
> > > IMHO the check is too simple, it will give false positive if
> > > GPT is replaced by DOS MBR and not zeroed out.  Need to check
> > > for protective MBR.
> > 
> > So is_fat_or_mbr() should test if the MBR is a protective MBR and return
> > false in this case?
> 
> no as the efi is more I do the check in efi.c protective bit and right type
> 
> I move the code to filetype
> 
> but efi need to be before MBR as you could have both for retro compatibility

Yes, Wikipedia says Apple Bootcamp creates hybrid MBR.
But if you run fdisk to create DOS MBR it will only
replace the first sector and leave the GPT alone.
Thus I think for usability it is important to check MBR
(for 0xAA55 marker and one of the part types must be 0xee).

Johannes

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
