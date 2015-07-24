Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIXcD-0005ki-K2
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 07:41:59 +0000
Date: Fri, 24 Jul 2015 09:41:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150724074135.GP18700@pengutronix.de>
References: <1437638492-12290-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1437638492-12290-1-git-send-email-d.schultz@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1] commands: Add dhrystone
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 23, 2015 at 10:01:32AM +0200, Daniel Schultz wrote:
> This tool will help to measure the system performance.
> =

> Some SoCs haven't the possibility to route their clocks to the output pin=
s.
> So you can use dhrystone to get a feedback about the clock speed.
> =

> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
> =

> Changes:
> 	v1:
> 	applied RFC suggestions:
> 		-removed 'default n' in Kconfig
> 		-refactored time defines with default time units
> 		-only print variable values when values are wrong
> 		-added units to printf
> 		-the iteration parameter is now optional. The programm starts
> 		with 10000 iterations and adjust higher, when execution time
> 		is too short.

I can see that the parameter is now optional, but I can't find the code
which adjusts the number of iterations. Am I missing something?

> 		-changed variable name (microseconds -> nanoseconds)
> 		-corrected the command description
> =

>  commands/Kconfig     |   6 +
>  commands/Makefile    |   1 +
>  commands/dhrystone.c | 466 +++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 473 insertions(+)
>  create mode 100644 commands/dhrystone.c
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index bb6674e..30485c0 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -2102,6 +2102,12 @@ config CMD_STATE
>  	depends on STATE
>  	prompt "state"
>  =

> +config CMD_DHRYSTONE
> +	bool
> +	prompt "dhrystone"
> +	help
> +	  CPU benchmark tool
> +
>  # end Miscellaneous commands
>  endmenu
>  =

> diff --git a/commands/Makefile b/commands/Makefile
> index 3698347..879caec 100644
> --- a/commands/Makefile
> +++ b/commands/Makefile
> @@ -112,3 +112,4 @@ obj-$(CONFIG_CMD_NV)		+=3D nv.o
>  obj-$(CONFIG_CMD_DEFAULTENV)	+=3D defaultenv.o
>  obj-$(CONFIG_CMD_STATE)		+=3D state.o
>  obj-$(CONFIG_CMD_DHCP)		+=3D dhcp.o
> +obj-$(CONFIG_CMD_DHRYSTONE)	+=3D dhrystone.o
> diff --git a/commands/dhrystone.c b/commands/dhrystone.c
> new file mode 100644
> index 0000000..e965011
> --- /dev/null
> +++ b/commands/dhrystone.c
> @@ -0,0 +1,466 @@
> +/*
> + * (C) Copyright 2014 - 2015 Phytec Messtechnik GmbH
> + * Author: Stefan M=FCller-Klieser <s.mueller-klieser@phytec.de>
> + * Author: Daniel Schultz <d.schultz@phytec.de>
> + *
> + * based on "DHRYSTONE" Benchmark Program
> + * Version:    C, Version 2.1
> + * Date:       May 25, 1988
> + * Author:     Reinhold P. Weicker
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License version 2
> + * as published by the Free Software Foundation.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#include <common.h>
> +#include <command.h>
> +#include <errno.h>
> +#include <clock.h>
> +#include <asm-generic/div64.h>
> +#include <malloc.h>
> +#include <stdbool.h>
> +#include <stdio.h> /* for strcpy, strcmp */
> +
> +enum idents {ident_1, ident_2, ident_3, ident_4, ident_5};
> +
> +/* General definitions: */
> +
> +struct record {
> +		struct record	*ptr_comp;
> +		enum idents	discr;
> +		union {
> +			struct {
> +				enum idents	enum_comp;
> +				int		int_comp;
> +				char		str_comp[31];
> +			} var_1;
> +			struct {
> +				enum idents	enum_comp_2;
> +				char		str_2_comp[31];
> +			} var_2;
> +			struct {
> +				char char_1_Comp;
> +				char char_2_Comp;
> +			} var_3;
> +		} variant;
> +};
> +
> +/* Global Variables: */
> +
> +struct record	*record_glob;
> +struct record	*next_record_glob;
> +int		int_glob;
> +bool		bool_glob;
> +char		char_1_glob;
> +char		char_2_glob;
> +int		arr_1_glob[50];
> +int		arr_2_glob[50][50];

These should all be static.

> +
> +/* variables for time measurement: */
> +
> +#define TOO_SMALL_TIME (50 * MSECOND)
> +/* Measurements should last at least 50mseconds */
> +#define TOO_LARGE_TIME (2 * SECOND)
> +
> +u64	 begin_time;
> +u64	 end_time;
> +u64	 user_time;
> +u64	 nanoseconds;
> +u64	 dhrystones_per_second;

These should probably be local variables in do_dhrystone().

> +/* end of variables for time measurement */
> +
> +enum idents compare_chars(char char_1, char char_2)
> +{
> +	if (char_1 !=3D char_2) {
> +		return ident_1;
> +	} else { /* should not executed */
> +		char_1_glob =3D char_1;
> +		return ident_2;
> +	}
> +}
> +
> +bool compare_strs(char str_1[31], char str_2[31])
> +{
> +	int offset;
> +
> +	offset =3D 2;
> +	while (offset <=3D 2)
> +		if (compare_chars(str_1[offset], str_2[offset+1]) =3D=3D ident_1)
> +			++offset;
> +	if (strcmp(str_1, str_2) > 0) {
> +		int_glob =3D offset + 7;
> +		return true;
> +	} else {
> +		return false;
> +	}
> +
> +}
> +
> +bool check_ident(enum idents ident)
> +{
> +	if (ident =3D=3D ident_3)
> +		return true;
> +	else
> +		return false;
> +}
> +
> +void proc_7(int input_1, int input_2, int *out)
> +{
> +	*out =3D input_2 + input_1 + 2;
> +}
> +
> +void proc_6(enum idents ident, enum idents *ident_out)
> +{
> +	*ident_out =3D ident;
> +	if (!check_ident(ident))
> +		*ident_out =3D ident_4;
> +	switch (ident) {
> +	case ident_1:
> +		*ident_out =3D ident_1;
> +		break;
> +	case ident_2:
> +		if (int_glob > 100)
> +			*ident_out =3D ident_1;
> +		else
> +			*ident_out =3D ident_4;
> +		break;
> +	case ident_3:
> +		*ident_out =3D ident_2;
> +		break;
> +	case ident_4:
> +		break;
> +	case ident_5:
> +		*ident_out =3D ident_3;
> +		break;
> +	}
> +}
> +
> +void fill_record(struct record *record)
> +{
> +	struct record *next_record =3D record->ptr_comp;
> +
> +	*record->ptr_comp =3D *record_glob;
> +	record->variant.var_1.int_comp =3D 5;
> +	next_record->variant.var_1.int_comp =3D record->variant.var_1.int_comp;
> +	next_record->ptr_comp =3D record->ptr_comp;
> +	proc_7(10, int_glob, &record_glob->variant.var_1.int_comp);
> +	/* Ptr_Val_Par->ptr_comp->ptr_comp =3D=3D record_glob->ptr_comp */
> +	if (next_record->discr =3D=3D ident_1) { /* then, executed */
> +		next_record->variant.var_1.int_comp =3D 6;
> +		proc_6(record->variant.var_1.enum_comp,
> +			&next_record->variant.var_1.enum_comp);
> +		next_record->ptr_comp =3D record_glob->ptr_comp;
> +		proc_7(next_record->variant.var_1.int_comp, 10,
> +			&next_record->variant.var_1.int_comp);
> +	} else { /* not executed */
> +		*record =3D *record->ptr_comp;
> +	}
> +}
> +
> +void proc_2(int *out)
> +{
> +	if (char_1_glob =3D=3D 'A')
> +		*out =3D *out + 9 - int_glob;
> +}
> +
> +void proc_4(void)
> +{
> +	bool_glob =3D (char_1_glob =3D=3D 'A') | bool_glob;
> +	char_2_glob =3D 'B';
> +}
> +
> +void proc_5(void)
> +{
> +	char_1_glob =3D 'A';
> +	bool_glob =3D false;
> +}
> +
> +/* dhry_2.c */
> +
> +void fill_array(int arr_1[50], int arr_2[50][50], int val_1, int val_2)
> +{
> +	int i;
> +	int offset;
> +
> +	offset =3D val_1 + 5;
> +	arr_1[offset] =3D val_2;
> +	arr_1[offset+1] =3D arr_1[offset];
> +	arr_1[offset+30] =3D offset;
> +	for (i =3D offset; i <=3D offset+1; ++i)
> +		arr_2[offset][i] =3D offset;
> +	arr_2[offset][offset-1] +=3D 1;
> +	arr_2[offset+20][offset] =3D arr_1[offset];
> +	int_glob =3D 5;
> +}
> +
> +static int do_dhrystone(int argc, char *argv[])
> +{
> +	/* main program, corresponds to procedures        */
> +	/* Main and Proc_0 in the Ada version             */
> +	int		int_1;
> +	int		int_2;
> +	int		int_3;
> +	char		char_i;
> +	enum idents	ident;
> +	char		str_1[31];
> +	char		str_2[31];
> +	int		i;
> +	int		number_of_runs;
> +	char		*new_argv[2];
> +	char		tmp_str[10];
> +
> +	/* barebox cmd */
> +	if (argc =3D=3D 2)
> +		number_of_runs =3D simple_strtoul(argv[1], NULL, 10);
> +	else
> +		number_of_runs =3D 10000;
> +
> +	/* Initializations */
> +	ident =3D ident_2; /* prevent compiler warning */
> +	int_2 =3D 0; /* prevent compiler warning */
> +	int_3 =3D 0; /* prevent compiler warning */
> +
> +	next_record_glob =3D malloc(sizeof(struct record));
> +	record_glob =3D malloc(sizeof(struct record));

xmalloc please. Also

	next_record_glob =3D xmalloc(sizeof(*next_record_glob));

Allows to change the type of next_record_glob without accidently missing
to change the sizeof().

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
