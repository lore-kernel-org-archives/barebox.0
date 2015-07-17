Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFzid-0006bb-73
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 07:06:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <mol@pengutronix.de>) id 1ZFxqY-0003vt-0P
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 07:06:06 +0200
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <mol@pengutronix.de>) id 1ZFziG-00074y-5I
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 09:05:40 +0200
Date: Fri, 17 Jul 2015 09:05:40 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20150717070540.GB26620@pengutronix.de>
References: <1437036236-19096-1-git-send-email-m.olbrich@pengutronix.de>
 <1437036236-19096-8-git-send-email-m.olbrich@pengutronix.de>
 <20150716200848.GI18700@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150716200848.GI18700@pengutronix.de>
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
Subject: Re: [PATCH 7/7] efi: write volatile EFI variables used by systemd
To: barebox@lists.infradead.org

On Thu, Jul 16, 2015 at 10:08:48PM +0200, Sascha Hauer wrote:
> On Thu, Jul 16, 2015 at 10:43:56AM +0200, Michael Olbrich wrote:
> > LoaderTimeInitUSec and LoaderTimeExecUSec are used e.g. in systemd-analyze
> > to calculate the time spent in the firmare and barebox.
> > 
> > LoaderDevicePartUUID is used to mount the EFI partition to /boot.
> > 
> > Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> > ---
> >  arch/efi/efi/efi-image.c |  5 +++++
> >  arch/efi/efi/efi.c       | 14 ++++++++++++++
> >  common/efi-guid.c        |  1 +
> >  include/efi.h            |  5 +++++
> >  4 files changed, 25 insertions(+)
> > 
> > diff --git a/arch/efi/efi/efi-image.c b/arch/efi/efi/efi-image.c
> > index f41322744bbc..89b712baab1f 100644
> > --- a/arch/efi/efi/efi-image.c
> > +++ b/arch/efi/efi/efi-image.c
> > @@ -17,6 +17,7 @@
> >   *
> >   */
> >  
> > +#include <clock.h>
> >  #include <common.h>
> >  #include <linux/sizes.h>
> >  #include <memory.h>
> > @@ -242,6 +243,10 @@ static int do_bootm_efi(struct image_data *data)
> >  			       boot_header->ramdisk_image);
> >  		printf("...\n");
> >  	}
> > +
> > +	efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
> > +			      get_time_ns()/1000);
> > +
> >  	linux_efi_handover(handle, boot_header);
> >  
> >  	return 0;
> > diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
> > index b0e98f95b02b..a665a546be90 100644
> > --- a/arch/efi/efi/efi.c
> > +++ b/arch/efi/efi/efi.c
> > @@ -340,6 +340,7 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
> >  	efi_physical_addr_t mem;
> >  	size_t memsize;
> >  	efi_status_t efiret;
> > +	char *uuid;
> >  
> >  #ifdef DEBUG
> >  	sys_table->con_out->output_string(sys_table->con_out, L"barebox\n");
> > @@ -377,6 +378,19 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
> >  	mem_malloc_init((void *)mem, (void *)mem + memsize);
> >  
> >  	efi_clocksource_init();
> > +	efi_set_variable_usec("LoaderTimeInitUSec", &efi_systemd_vendor_guid,
> > +			      get_time_ns()/1000);
> > +
> > +	uuid = device_path_to_partuuid(device_path_from_handle(
> > +				       efi_loaded_image->device_handle));
> > +	if (uuid) {
> > +		wchar_t *uuid16 = strdup_char_to_wchar(uuid);
> > +		efi_set_variable("LoaderDevicePartUUID",
> > +				 &efi_systemd_vendor_guid,
> > +				 EFI_VARIABLE_BOOTSERVICE_ACCESS |
> > +				 EFI_VARIABLE_RUNTIME_ACCESS,
> > +				 uuid16, (strlen(uuid)+1) * sizeof(wchar_t));
> > +	}
> 
> Shouldn't you free uuid here?

Yes, and uuid16.

Hmmm, what's the policy for OOM checks for string functions? None of the
existing calls of strdup_char_to_wchar() check for NULL. And I didn't find
any checks for asprintf() either.

Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
