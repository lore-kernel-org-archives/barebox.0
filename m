Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XlwSS-0000Ew-SK
 for barebox@lists.infradead.org; Wed, 05 Nov 2014 09:00:53 +0000
Message-ID: <1415178029.2481.0.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 05 Nov 2014 10:00:29 +0100
In-Reply-To: <20141105072100.GH30369@pengutronix.de>
References: <1415094176-26435-1-git-send-email-l.stach@pengutronix.de>
 <20141105072100.GH30369@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 01/10] efi: add proper reset hook
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Mittwoch, den 05.11.2014, 08:21 +0100 schrieb Sascha Hauer:
> On Tue, Nov 04, 2014 at 10:42:47AM +0100, Lucas Stach wrote:
> > This allows to actually reset the system from barebox
> > instead of dropping back into the EFI firmware.
> 
> Now we can reset the system, but not go back into the EFI firmware
> anymore. Should we introduce a command to make that possible?
> 
Yes, that makes sense. I'll add a command for that.

> Sascha
> 
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  arch/efi/efi/efi.c |  2 +-
> >  include/efi.h      | 11 +++++++----
> >  2 files changed, 8 insertions(+), 5 deletions(-)
> > 
> > diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
> > index 7de8ec82e8fa..af3fc4366ba1 100644
> > --- a/arch/efi/efi/efi.c
> > +++ b/arch/efi/efi/efi.c
> > @@ -248,7 +248,7 @@ console_initcall(efi_console_init);
> >  
> >  void reset_cpu(unsigned long addr)
> >  {
> > -	BS->exit(efi_parent_image, EFI_SUCCESS, 0, NULL);
> > +	RT->reset_system(EFI_RESET_WARM, EFI_SUCCESS, 0, NULL);
> >  
> >  	while(1);
> >  }
> > diff --git a/include/efi.h b/include/efi.h
> > index 4ad9f69237e7..70fe254dbafa 100644
> > --- a/include/efi.h
> > +++ b/include/efi.h
> > @@ -255,9 +255,11 @@ extern efi_boot_services_t *BS;
> >  /*
> >   * Types and defines for EFI ResetSystem
> >   */
> > -#define EFI_RESET_COLD 0
> > -#define EFI_RESET_WARM 1
> > -#define EFI_RESET_SHUTDOWN 2
> > +typedef enum {
> > +	EFI_RESET_COLD = 0,
> > +	EFI_RESET_WARM = 1,
> > +	EFI_RESET_SHUTDOWN = 2
> > +} efi_reset_type_t;
> >  
> >  /*
> >   * EFI Runtime Services table
> > @@ -279,7 +281,8 @@ typedef struct {
> >  			s16 *variable_name, efi_guid_t *vendor);
> >  	void *set_variable;
> >  	void *get_next_high_mono_count;
> > -	void *reset_system;
> > +	void (EFIAPI *reset_system)(efi_reset_type_t reset_type, efi_status_t reset_status,
> > +			unsigned long data_size, void *reset_data);
> >  	void *update_capsule;
> >  	void *query_capsule_caps;
> >  	void *query_variable_info;
> > -- 
> > 2.1.1
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
