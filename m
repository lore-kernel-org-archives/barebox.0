Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZH4rE-0006QA-Ms
 for barebox@lists.infradead.org; Mon, 20 Jul 2015 06:47:26 +0000
Date: Mon, 20 Jul 2015 08:47:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150720064702.GW18700@pengutronix.de>
References: <1437054633-14482-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1437054633-14482-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [RFC] commands: Add dhrystone
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

Hi Daniel,

On Thu, Jul 16, 2015 at 03:50:33PM +0200, Daniel Schultz wrote:
> This tool will help to measure the system performance.
> =

> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
> ---
>  commands/Kconfig     |   7 +
>  commands/Makefile    |   1 +
>  commands/dhrystone.c | 404 +++++++++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 412 insertions(+)
>  create mode 100644 commands/dhrystone.c
> =

> diff --git a/commands/Kconfig b/commands/Kconfig
> index bb6674e..9b1109e 100644
> --- a/commands/Kconfig
> +++ b/commands/Kconfig
> @@ -2102,6 +2102,13 @@ config CMD_STATE
>  	depends on STATE
>  	prompt "state"
>  =

> +config CMD_DHRYSTONE
> +	bool
> +	default n

'n' already is the default. Please drop this line.

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
> index 0000000..86b65d1
> --- /dev/null
> +++ b/commands/dhrystone.c
> @@ -0,0 +1,404 @@
> +/*
> + * (C) Copyright 2014 Phytec Messtechnik GmbH
> + * Author: Stefan M=FCller-Klieser <s.mueller-klieser@phytec.de>
> + * (C) Copyright (C) 2015 Phytec Messtechnik GmbH
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
> +
> +/* variables for time measurement: */
> +
> +#define TOO_SMALL_TIME 50000000

50 * MSECOND

> +/* Measurements should last at least 50mseconds */
> +#define TOO_LARGE_TIME 2000000000

2 * SECOND

Makes this better readable.

> +
> +u64	 begin_time;
> +u64	 end_time;
> +u64	 user_time;
> +u64	 microseconds;
> +u64	 dhrystones_per_second;
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
> +
> +	/* barebox cmd */
> +	if (argc < 2)
> +		return COMMAND_ERROR_USAGE;
> +	number_of_runs =3D simple_strtoul(argv[1], NULL, 10);
> +
> +	/* Initializations */
> +	ident =3D ident_2; /* prevent compiler warning */
> +	int_2 =3D 0; /* prevent compiler warning */
> +	int_3 =3D 0; /* prevent compiler warning */
> +
> +	next_record_glob =3D malloc(sizeof(struct record));
> +	record_glob =3D malloc(sizeof(struct record));
> +
> +	record_glob->ptr_comp			=3D next_record_glob;
> +	record_glob->discr			=3D ident_1;
> +	record_glob->variant.var_1.enum_comp	=3D ident_3;
> +	record_glob->variant.var_1.int_comp	=3D 40;
> +	strcpy(record_glob->variant.var_1.str_comp,
> +		"DHRYSTONE PROGRAM, SOME STRING");
> +	strcpy(str_1, "DHRYSTONE PROGRAM, 1'ST STRING");
> +
> +	arr_2_glob[8][7] =3D 10;
> +	/* Was missing in published program. Without this statement,    */
> +	/* arr_2_glob [8][7] would have an undefined value.             */
> +	/* Warning: With 16-Bit processors and number_of_runs > 32000,  */
> +	/* overflow may occur for this array element.                   */
> +
> +	printf("\n");
> +	printf("Dhrystone Benchmark, Version 2.1 (Language: C)\n");
> +	printf("\n");
> +	printf("Program compiled without 'register' attribute\n");
> +	printf("\n");
> +	printf("Execution starts, %d runs through Dhrystone\n", number_of_runs);
> +
> +	/***************/
> +	/* Start timer */
> +	/***************/
> +	begin_time =3D get_time_ns();
> +
> +	for (i =3D 1; i <=3D number_of_runs; ++i) {
> +		proc_5();
> +		proc_4();
> +		/* char_1_glob =3D=3D 'A', char_2_glob =3D=3D 'B', bool_glob =3D=3D tr=
ue */
> +		int_1 =3D 2;
> +		int_2 =3D 3;
> +		strcpy(str_2, "DHRYSTONE PROGRAM, 2'ND STRING");
> +		ident =3D ident_2;
> +		bool_glob =3D !compare_strs(str_1, str_2);
> +		/* bool_glob =3D=3D 1 */
> +		while (int_1 < int_2) {
> +			int_3 =3D 5 * int_1 - int_2;
> +			/* int_3 =3D=3D 7 */
> +			proc_7(int_1, int_2, &int_3);
> +			/* int_3 =3D=3D 7 */
> +			int_1 +=3D 1;
> +		}
> +		/* int_1 =3D=3D 3, int_2 =3D=3D 3, int_3 =3D=3D 7 */
> +		fill_array(arr_1_glob, arr_2_glob, int_1, int_3);
> +		/* int_glob =3D=3D 5 */
> +		fill_record(record_glob);
> +		for (char_i =3D 'A'; char_i <=3D char_2_glob; ++char_i) {
> +			if (ident =3D=3D compare_chars(char_i, 'C')) {
> +				proc_6(ident_1, &ident);
> +				strcpy(str_2,
> +					"DHRYSTONE PROGRAM, 3'RD STRING");
> +				int_2 =3D i;
> +				int_glob =3D i;
> +			}
> +		}
> +		/* int_1 =3D=3D 3, int_2 =3D=3D 3, int_3 =3D=3D 7 */
> +		int_2 =3D int_2 * int_1;
> +		int_1 =3D int_2 / int_3;
> +		int_2 =3D 7 * (int_2 - int_3) - int_1;
> +		/* int_1 =3D=3D 1, int_2 =3D=3D 13, int_3 =3D=3D 7 */
> +		proc_2(&int_1);
> +		/* int_1 =3D=3D 5 */
> +	}
> +
> +	/**************/
> +	/* Stop timer */
> +	/**************/
> +	end_time =3D get_time_ns();
> +
> +	printf("Execution ends\n");
> +	printf("\n");
> +	printf("Final values of the variables used in the benchmark:\n");
> +	printf("\n");
> +	printf("int_glob:            %d\n", int_glob);
> +	printf("        should be:   %d\n", 5);
> +	printf("bool_glob:           %d\n", bool_glob);
> +	printf("        should be:   %d\n", 1);
> +	printf("char_1_glob:         %c\n", char_1_glob);
> +	printf("        should be:   %c\n", 'A');
> +	printf("char_2_glob:         %c\n", char_2_glob);
> +	printf("        should be:   %c\n", 'B');
> +	printf("arr_1_glob[8]:       %d\n", arr_1_glob[8]);
> +	printf("        should be:   %d\n", 7);
> +	printf("arr_2_glob[8][7]:    %d\n", arr_2_glob[8][7]);
> +	printf("        should be:   number_of_runs + 10\n");
> +	printf("record_glob->\n");
> +	printf("  ptr_comp:          %d\n", (int) record_glob->ptr_comp);
> +	printf("        should be:   (implementation-dependent)\n");
> +	printf("  discr:             %d\n", record_glob->discr);
> +	printf("        should be:   %d\n", 0);
> +	printf("  enum_comp:         %d\n",
> +		record_glob->variant.var_1.enum_comp);
> +	printf("        should be:   %d\n", 2);
> +	printf("  int_comp:          %d\n",
> +		record_glob->variant.var_1.int_comp);
> +	printf("        should be:   %d\n", 17);
> +	printf("  str_comp:          %s\n",
> +		record_glob->variant.var_1.str_comp);
> +	printf("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
> +	printf("next_record_glob->\n");
> +	printf("  ptr_comp:          %d\n", (int) next_record_glob->ptr_comp);
> +	printf("        should be:   (implementation-dependent), same as above\=
n");
> +	printf("  discr:             %d\n", next_record_glob->discr);
> +	printf("        should be:   %d\n", 0);
> +	printf("  enum_comp:         %d\n",
> +		next_record_glob->variant.var_1.enum_comp);
> +	printf("        should be:   %d\n", 1);
> +	printf("  int_comp:          %d\n",
> +		next_record_glob->variant.var_1.int_comp);
> +	printf("        should be:   %d\n", 18);
> +	printf("  str_comp:          %s\n",
> +		next_record_glob->variant.var_1.str_comp);
> +	printf("        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
> +	printf("int_1:               %d\n", int_1);
> +	printf("        should be:   %d\n", 5);
> +	printf("int_2:               %d\n", int_2);
> +	printf("        should be:   %d\n", 13);
> +	printf("int_3:               %d\n", int_3);
> +	printf("        should be:   %d\n", 7);
> +	printf("ident:               %d\n", ident);
> +	printf("        should be:   %d\n", 1);
> +	printf("str_1:               %s\n", str_1);
> +	printf("        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
> +	printf("str_2:               %s\n", str_2);
> +	printf("        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
> +	printf("\n");

When the values above match the expected values they seem mostly
uninteresting. You should only print them when they actually don't match
the expected values.

> +
> +	user_time =3D end_time - begin_time;
> +
> +	if (user_time < TOO_SMALL_TIME) {
> +		printf("Measured time too small to obtain meaningful results\n");
> +		printf("or a timer wrap happend. Please increase number of runs\n");
> +		printf("starting from 10 in *10 increments\n");
> +		printf("user_time: %llu\n", user_time);

Add unit to printf (ns)?

> +	} else if (user_time > TOO_LARGE_TIME) {
> +		printf("Measured time too large to obtain meaningful results.\n");
> +		printf("Please decrease number of runs by *10\n");
> +		printf("Timer overflow could occured.\n");
> +		printf("user_time: %llu\n", user_time);

ditto.

The above loks very 80ies style. How about making the number of
iterations optional on the command line and just run the benchmark until
enough time is over? You may test for the time only every 10000
iterations or so to keep the overhead of measuring the time small.

> +	} else if (end_time < begin_time) {
> +		printf("Timer overflow occured.\n");
> +		printf("Please restart the programm.\n");
> +	} else {
> +		printf("user_time: %llu ns\n", user_time);
> +
> +		microseconds =3D user_time;
> +		do_div(microseconds, number_of_runs);
> +
> +		printf("Nanoseconds for one run through Dhrystone: ");
> +		printf("%llu\n", microseconds);

Should the variable name be nanoseconds?

Should be a single printf.

> +		printf("Dhrystones per Second:\n ");
> +		printf("(%d / %llu) * 10^9\n", number_of_runs, user_time);
> +		printf("DMIPS:\n ");
> +		printf("((%d / %llu) * 10^9) / 1757\n", number_of_runs,
> +							user_time);
> +		printf("\n");
> +	}
> +
> +	return 0;
> +}
> +
> +BAREBOX_CMD_HELP_START(dhrystone)
> +BAREBOX_CMD_HELP_TEXT(
> +"this command runs a dhrystone benchmark to get an astimation of the CPU=
 freq")

s/astimation/estimation/

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
